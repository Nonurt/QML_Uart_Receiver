import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 520
    minimumWidth: 640
    minimumHeight: 520


    visible: true
    title: "Led_Controller"









    Rectangle {
        id: rectangle
        implicitWidth: 800
        implicitHeight: 600
        anchors.fill: parent

        // Menü çubuğu
        MenuBar {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            Menu {
                title: "SerialPort"

                MenuItem {
                    text: "Connect"
                }

                MenuItem {
                    text: "Disconnect"
                }

                MenuItem {
                    text: "Select Port"
                }
            }

            Menu {
                title: "Settings"

                MenuItem {
                    text: "Preferences"
                }

                MenuItem {
                    text: "About"
                }
            }
        }

        Row {
            id: row
            x: 537
            width: 84
            height: 36
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 19
            anchors.topMargin: 0

            Button {
                id: dali
                width: 40
                text: qsTr("Dali")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.bottomMargin: -1
                highlighted: false
                flat: false
                z: 1

                Connections {
                    target: dali
                    function onClicked() {
                        stackView.push("D4i_dali_page.qml")
                    }
                }
            }

            Button {
                id: uart
                width: 40
                text: qsTr("Uart")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: -1
                anchors.topMargin: 0
                anchors.bottomMargin: -1
                z: 1

                Connections {
                    target: uart
                    function onClicked() {
                        stackView.push("D4i_uart_page.qml")
                    }
                }
            }
        }

        StackView {
            id: stackView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 39
            anchors.bottomMargin: 0
            initialItem: "D4i_dali_page.qml"
        }

}


}
