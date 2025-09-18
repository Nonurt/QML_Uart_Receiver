#include "serialporthelper.h"
#include <QSerialPortInfo>
#include <QDebug>

serialporthelper::serialporthelper(QObject *parent)
    : QObject(parent)
{
    refreshPorts();
}

// --- Port listesi ---
QStringList serialporthelper::availablePorts() const
{
    return m_ports;
}

void serialporthelper::refreshPorts()
{
    QStringList portList;
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos) {
        portList << info.portName();
    }

    if (portList != m_ports) {
        m_ports = portList;
        emit portsChanged();
        qDebug() << "Port listesi güncellendi:" << m_ports;
    }
}

// --- Seçilen port ---
QString serialporthelper::selectedPort() const
{
    return m_selectedPort;
}

void serialporthelper::setSelectedPort(const QString &port)
{
    if (m_selectedPort != port) {
        m_selectedPort = port;
        emit selectedPortChanged();
        disconnectPort();
        qDebug() << "Seçilen port değişti:" << m_selectedPort;
    }
}

// --- Port ayarları getter'ları ---
QString serialporthelper::baudRate() const
{
    return m_baudRate;
}

QString serialporthelper::dataBits() const
{
    return m_dataBits;
}

QString serialporthelper::parity() const
{
    return m_parity;
}

QString serialporthelper::stopBits() const
{
    return m_stopBits;
}

// --- QML'den çağrılan ayar set edici ---
void serialporthelper::setPortSettings(const QString &baudRate,
                                       const QString &dataBits,
                                       const QString &parity,
                                       const QString &stopBits)
{
    bool changed = false;

    if (m_baudRate != baudRate) {
        m_baudRate = baudRate;
        changed = true;
    }

    if (m_dataBits != dataBits) {
        m_dataBits = dataBits;
        changed = true;
    }

    if (m_parity != parity) {
        m_parity = parity;
        changed = true;
    }

    if (m_stopBits != stopBits) {
        m_stopBits = stopBits;
        changed = true;
    }

    if (changed) {
        emit settingsChanged();
        qDebug() << "Port ayarları güncellendi:";
        qDebug() << "  Baud Rate:" << m_baudRate;
        qDebug() << "  Data Bits:" << m_dataBits;
        qDebug() << "  Parity   :" << m_parity;
        qDebug() << "  Stop Bits:" << m_stopBits;
    }
}




void serialporthelper::connectPort()
{
    if (m_serial.isOpen())
        m_serial.close();

    m_serial.setPortName(m_selectedPort);
    m_serial.setBaudRate(m_baudRate.toInt());
    m_serial.setDataBits(static_cast<QSerialPort::DataBits>(m_dataBits.toInt()));
    m_serial.setParity(static_cast<QSerialPort::Parity>(
        parity() == "None" ? QSerialPort::NoParity :
            parity() == "Even" ? QSerialPort::EvenParity :
            parity() == "Odd"  ? QSerialPort::OddParity :
            parity() == "Mark" ? QSerialPort::MarkParity :
            QSerialPort::SpaceParity));
    m_serial.setStopBits(static_cast<QSerialPort::StopBits>(
        stopBits() == "1"   ? QSerialPort::OneStop :
            stopBits() == "1.5" ? QSerialPort::OneAndHalfStop :
            QSerialPort::TwoStop));

    if (m_serial.open(QIODevice::ReadWrite)) {
        m_connected = true;
        emit connectionChanged();
        qDebug() << "Port bağlantısı açıldı:" << m_selectedPort;

        // ✅ Gelen veriyi yakala
        connect(&m_serial, &QSerialPort::readyRead, this, [this]() {
            QByteArray bytes = m_serial.readAll();
            QString message = QString::fromUtf8(bytes);
            qDebug() << "[UART] Alındı:" << message;
            emit dataReceived(message);


                appendToOldDriverResponseHistory(message);
        });

    } else {
        m_connected = false;
        emit connectionChanged();
        qWarning() << "Port açılamadı:" << m_serial.errorString();
    }
}

void serialporthelper::disconnectPort()
{
    if (m_serial.isOpen())
        m_serial.close();

    m_connected = false;
    emit connectionChanged();
    qDebug() << "Port bağlantısı kapatıldı.";
}

bool serialporthelper::isConnected() const
{
    return m_connected;
}



void serialporthelper::sendData(const QString &data)
{
    if (m_serial.isOpen()) {
        QByteArray bytes = data.toUtf8(); // veya toLatin1() – cihazın karakter setine göre değişebilir
        m_serial.write(bytes);
        qDebug() << "[UART] Gönderildi:" << bytes;
    } else {
        qWarning() << "[UART] Port açık değil, veri gönderilemedi.";
    }
}



void serialporthelper::send_command_old_driver()
{
    // Listeyi başlat
    old_driver_command_list = {"A", "B", "C", "D", "E", "V", "t", "T", "p", "S"};
    old_driver_results.clear();

    // Timer yoksa oluştur
    if (!old_driver_timer) {
        old_driver_timer = new QTimer(this);
        old_driver_timer->setInterval(100);  // 3 ms

        connect(old_driver_timer, &QTimer::timeout, this, [this]() {
            if (old_driver_command_list.isEmpty()) {
                old_driver_timer->stop();
                qDebug() << "[OLD_DRIVER] Tüm komutlar gönderildi (Timer ile).";
                return;
            }

            current_old_driver_command = old_driver_command_list.takeFirst();
            sendData(current_old_driver_command + "\r\n");
            qDebug() << "[OLD_DRIVER] Gönderildi:" << current_old_driver_command;
        });
    }

    old_driver_timer->start();
}










void serialporthelper::appendToOldDriverResponseHistory(const QString &message)
{
    old_driver_response_history.append(message);

    if (old_driver_response_history.size() == 10) {
        // Gelen 13 mesajı yedekle
        old_driver_response_history_backup = old_driver_response_history;

        // Vektörü baştan temizle ve 13 elemanlı boş yer ayır
        parsed_old_driver_values = QVector<QString>(10, "");

        for (const QString &msg : old_driver_response_history_backup) {
            if (msg.isEmpty()) continue;


            QString tmsg = msg;
            tmsg.remove(" ");
            tmsg.remove("\n");
            tmsg.remove("\r");
            QChar key = tmsg[0];
            //QString value = tmsg.mid(1).trimmed(); // Sayı kısmı


            //qDebug() << "Gelen mesaj:" << msg << " | temiz:" << tmsg << " | key:" << key;

            int index = -1;

            // Harflere göre sabit sıralama
            if (key == 'A') index = 0;
            else if (key == 'B') index = 1;
            else if (key == 'C') index = 2;
            else if (key == 'D') index = 3;
            else if (key == 'E') index = 4;
            else if (key == 'V') index = 5;
            else if (key == 't') index = 6;
            else if (key == 'T') index = 7;
            else if (key == 'p') index = 8;
            else if (key == 'S') index = 9;
            //else if (key == 'I') index = 10;
            //else if (key == 'L') index = 11;
            //else if (key == 'H') index = 12;

             qDebug() << "Gelen mesaj:" << msg << " | temiz:" << tmsg << " | key:" << key << " |index: "<< index;



            if (index != -1)
                parsed_old_driver_values[index] = tmsg;
        }

        emit oldDriverResponseHistoryFull();

        old_driver_response_history.clear();
    }
}





QString serialporthelper::getParsedOldDriverValue(int index) const
{
    if (index >= 0 && index < parsed_old_driver_values.size())
        return parsed_old_driver_values[index];
    return "";
}

