import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: portWindow
    width: 400
    height: 450
    title: "Port Ayarları"
    visible: false

    Rectangle {
        anchors.fill: parent
        color: "white"

        Column {
            anchors.centerIn: parent
            spacing: 12

            Text {
                text: "Port Seçimi"
                font.bold: true
                font.pointSize: 14
            }

            ComboBox {
                id: portCombo
                width: 200
                model: serialporthelper.ports

                Component.onCompleted: serialporthelper.refreshPorts()

                onCurrentTextChanged: {
                    serialporthelper.selectedPort = currentText
                    console.log("Seçilen port:", currentText)
                }
            }

            Text {
                text: "Baud Rate"
            }

            ComboBox {
                id: baudRateCombo
                width: 200
                model: [ "9600", "19200", "38400", "57600", "115200" ]
                currentIndex: 4 // 115200 default
            }

            Text {
                text: "Data Bits"
            }

            ComboBox {
                id: dataBitsCombo
                width: 200
                model: [ "5", "6", "7", "8" ]
                currentIndex: 3 // 8 default
            }

            Text {
                text: "Parity"
            }

            ComboBox {
                id: parityCombo
                width: 200
                model: [ "None", "Even", "Odd", "Mark", "Space" ]
                currentIndex: 0
            }

            Text {
                text: "Stop Bits"
            }

            ComboBox {
                id: stopBitsCombo
                width: 200
                model: [ "1", "1.5", "2" ]
                currentIndex: 0
            }

            Row {
                spacing: 20

                Button {
                    text: "Uygula"
                    onClicked: {
                        serialporthelper.setPortSettings(
                            baudRateCombo.currentText,
                            dataBitsCombo.currentText,
                            parityCombo.currentText,
                            stopBitsCombo.currentText
                        )
                        console.log("Ayarlar gönderildi")
                        portWindow.close()
                    }
                }

                Button {
                    text: "Kapat"
                    onClicked: portWindow.close()
                }
            }
        }
    }
}
