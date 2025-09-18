import QtQuick
import QtQuick.Controls 6.8
import QtQuick3D 6.8

Item {
    id: uart_page

    Rectangle {
        id: rectangle
        color: "#dfdfdf"
        anchors.fill: parent
        Label {
            id: label
            color: "#545454"
            text: qsTr("D4İ UART")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 13
            anchors.topMargin: 8
            font.pointSize: 16
        }

        Row {
            id: row
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 23
            anchors.topMargin: 53
            anchors.bottomMargin: 261
            spacing: 10
            leftPadding: 6
            topPadding: 6

            Rectangle {
                id: rectangle1
                width: 225
                height: 150
                color: "#dfdfdf"
                radius: 1
                border.width: 1

                Rectangle {
                    id: rectangle2
                    x: 8
                    y: -10
                    width: 90
                    height: 19
                    color: "#dfdfdf"

                    Label {
                        id: label1
                        color: "#000000"
                        text: qsTr("Power Control")
                    }
                }

                Rectangle {
                    id: uart_new_max
                    x: 8
                    y: 8
                    width: 100; height: 30
                    radius: 4
                    color: mouseArea.pressed ? "#999999" : mouseArea.containsMouse ? "#d6d6d6" : "#c1c1c1"

                    Text {
                        anchors.centerIn: parent
                        text: "MAX"
                        font.pointSize: 12
                        color: "black"
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        hoverEnabled: true
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                    }
                }

                Rectangle {
                    id: uart_new_up
                    x: 8
                    y: 44
                    width: 45
                    height: 20
                    color: mouseArea1.pressed ? "#999999" : mouseArea1.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "up"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea1
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_stepup
                    x: 56
                    y: 44
                    width: 52
                    height: 20
                    color: mouseArea2.pressed ? "#999999" : mouseArea2.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "Step ▲"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea2
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_stepdown
                    x: 56
                    y: 70
                    width: 52
                    height: 20
                    color: mouseArea3.pressed ? "#999999" : mouseArea3.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "Step ▼"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea3
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_down
                    x: 8
                    y: 70
                    width: 45
                    height: 20
                    color: mouseArea4.pressed ? "#999999" : mouseArea4.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "down"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea4
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_min
                    x: 8
                    y: 96
                    width: 100
                    height: 30
                    color: mouseArea5.pressed ? "#999999" : mouseArea5.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "MİN"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea5
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_off
                    x: 31
                    y: 130
                    width: 45
                    height: 12
                    color: mouseArea6.pressed ? "#999999" : mouseArea6.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "off"
                        font.pointSize: 10
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea6
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_direct
                    x: 114
                    y: 106
                    width: 52
                    height: 20
                    color: mouseArea7.pressed ? "#999999" : mouseArea7.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "Direct"
                        font.pointSize: 12
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea7
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                Rectangle {
                    id: uart_new_gotoscene
                    x: 87
                    y: 132
                    width: 79
                    height: 14
                    color: mouseArea8.pressed ? "#999999" : mouseArea8.containsMouse ? "#d6d6d6" : "#c1c1c1"
                    radius: 4
                    Text {
                        color: "#000000"
                        text: "Go to Scene"
                        font.pointSize: 10
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouseArea8
                        anchors.fill: parent
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: -1
                        anchors.bottomMargin: 1
                        onClicked: {
                            // Buton tıklama işlemleri
                            console.log("Clicked!")
                        }
                        hoverEnabled: true
                    }
                }

                TextInput {
                    id: directnumber
                    x: 181
                    y: 106
                    width: 44
                    height: 20
                    color: "#212121"
                    text: qsTr("0")
                    font.pixelSize: 12
                    z: 1
                }

                ComboBox {
                    id: comboBox_gotoscene
                    x: 172
                    y: 130
                    width: 45
                    height: 16
                }



            }

            Rectangle {
                id: rectangle3
                width: 204
                height: 150
                color: "#dfdfdf"
                radius: 1
                border.width: 1
                Rectangle {
                    id: rectangle4
                    x: 8
                    y: -10
                    width: 77
                    height: 19
                    color: "#dfdfdf"
                    Label {
                        id: label2
                        color: "#000000"
                        text: qsTr("Fade Setting")
                    }
                }
            }

            Rectangle {
                id: rectangle5
                width: 138
                height: 150
                color: "#dfdfdf"
                radius: 1
                border.width: 1
                Rectangle {
                    id: rectangle6
                    x: 8
                    y: -10
                    width: 77
                    height: 19
                    color: "#dfdfdf"
                    Label {
                        id: label3
                        color: "#000000"
                        text: qsTr("Level Setting")
                    }
                }
            }
        }

        Row {
            id: row1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 13
            anchors.rightMargin: 252
            anchors.topMargin: 225
            anchors.bottomMargin: 47
        }

        Button {
            id: button
            x: 108
            y: 8
            width: 82
            height: 32
            text: qsTr("New")
            icon.color: "#ffffff"
            flat: false

            Connections {
                target: button
                function onClicked() {  stackView.push("D4i_uart_page.qml") }
            }
        }

        Button {
            id: button1
            x: 196
            y: 8
            width: 90
            height: 32
            text: qsTr("Old")
            flat: false

            Connections {
                target: button1
                function onClicked() {  stackView.push("D4i_uart_page_old.qml") }
            }
        }
    }

    Item {
        id: __materialLibrary__
    }
}




/*##^##
Designer {
    D{i:0}D{i:1}D{i:3}D{i:5;locked:true}D{i:7;locked:true}D{i:10;locked:true}D{i:13;locked:true}
D{i:16;locked:true}D{i:19;locked:true}D{i:22;locked:true}D{i:25;locked:true}D{i:28;locked:true}
D{i:31;locked:true}D{i:36}D{i:39}D{i:42}
}
##^##*/
