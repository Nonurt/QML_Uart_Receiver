#ifndef SERIALPORTHELPER_H
#define SERIALPORTHELPER_H

#include <QObject>
#include <QStringList>
#include <qserialportinfo.h>
#include <QSerialPort>
#include <QTime>
#include <QTimer>
#include <QVector>

class serialporthelper : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QStringList ports READ availablePorts NOTIFY portsChanged)
    Q_PROPERTY(QString selectedPort READ selectedPort WRITE setSelectedPort NOTIFY selectedPortChanged)

    Q_PROPERTY(QString baudRate READ baudRate NOTIFY settingsChanged)
    Q_PROPERTY(QString dataBits READ dataBits NOTIFY settingsChanged)
    Q_PROPERTY(QString parity READ parity NOTIFY settingsChanged)
    Q_PROPERTY(QString stopBits READ stopBits NOTIFY settingsChanged)



public:
    explicit serialporthelper(QObject *parent = nullptr);

    // Port listesi
    QStringList availablePorts() const;
        Q_INVOKABLE void refreshPorts();

    // Seçilen port
    QString selectedPort() const;
    void setSelectedPort(const QString &port);

    // Seri port ayarları (QML'den okunabilir)
    QString baudRate() const;
    QString dataBits() const;
    QString parity() const;
    QString stopBits() const;

    // QML'den çağrılabilecek fonksiyon
    Q_INVOKABLE void setPortSettings(const QString &baudRate,
                                     const QString &dataBits,
                                     const QString &parity,
                                     const QString &stopBits);



    Q_INVOKABLE void connectPort();
    Q_INVOKABLE void disconnectPort();

    Q_PROPERTY(bool isConnected READ isConnected NOTIFY connectionChanged)
    bool isConnected() const;

    Q_INVOKABLE void sendData(const QString &data);





    Q_INVOKABLE void send_command_old_driver();
    Q_INVOKABLE void appendToOldDriverResponseHistory(const QString &message);

    Q_INVOKABLE QString getParsedOldDriverValue(int index) const;


signals:
    void portsChanged();
    void selectedPortChanged();
    void settingsChanged();
    void connectionChanged();
    void dataReceived(const QString &message);


    void oldDriverResponseHistoryFull();



private:
    QStringList m_ports;
    QString m_selectedPort;

    QString m_baudRate;
    QString m_dataBits;
    QString m_parity;
    QString m_stopBits;


    QSerialPort m_serial;
    bool m_connected = false;





    QStringList old_driver_command_list;
    QMap<QString, QString> old_driver_results;
    QTimer *old_driver_timer = nullptr;
    QString current_old_driver_command;


    QStringList old_driver_response_history;
    QStringList old_driver_response_history_backup;
   QVector<QString> parsed_old_driver_values;
};

#endif // SERIALPORTHELPER_H
