import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 520
    minimumWidth: 640
    minimumHeight: 520
    id: root

    visible: true
    title: "Led_Controller"

  property bool updateLoopEnabled: true







    Rectangle {
        id: rectangle
        implicitWidth: 800
        implicitHeight: 600
        anchors.fill: parent

        // Menü çubuğu
        MenuBar {
            height: 28
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            z: 1
            Menu {
                title: "SerialPort"

                MenuItem {
                    text: "Connect"
                    onTriggered: {
                         serialporthelper.connectPort()
                     }
                }

                MenuItem {
                    text: "Disconnect"
                    onTriggered: {
                          serialporthelper.disconnectPort()
                      }
                }

                MenuItem {
                    text: "Select Port"

                    onTriggered: {

                        var component = Qt.createComponent("SelectPortPopup.qml")
                                           if (component.status === Component.Ready) {
                                               var newWindow = component.createObject(null) }
                                           if (newWindow) {
                                                                      newWindow.visible = true  // göster
                                                                  }
                                           else {
                                                                       console.error("Pencere oluşturulamadı.")
                                                                   }



                                   }

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
            x: 548
            width: 84
            height: 25
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 8
            anchors.topMargin: 2
            z: 3

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
                z: 2

                Connections {
                    target: dali
                    function onClicked() {
                         Window.updateLoopEnabled = false
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
                z: 2

                Connections {
                    target: uart
                    function onClicked() {
                         Window.updateLoopEnabled = false
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
            anchors.topMargin: 25
            anchors.bottomMargin: 0
            initialItem: "D4i_dali_page.qml"
        }

}









}
