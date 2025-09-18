import QtQuick

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Item {
    x: 0
    Rectangle {
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        color: "#d6d6d6"

        Text {
            anchors.centerIn: parent
            text: "Uart D4I"
            font.pixelSize: 24
            anchors.verticalCenterOffset: -188
            anchors.horizontalCenterOffset: -262
        }

        Row {
            id: row
            x: 14
            y: 80
            width: 605
            height: 178
            leftPadding: 10
            spacing: 10

            Rectangle {
                id: rectangle
                x: 0
                y: 15
                width: 200
                height: 150
                color: "#d6d6d6"
                border.width: 1

                Label {
                    id: label
                    x: 8
                    y: -19
                    text: qsTr("Power Control")
                }

                Button {
                    id: uart_d4i_max
                    x: 8
                    y: 15
                    width: 120
                    text: qsTr("MAX")
                    font.pointSize: 12
                }

                Button {
                    id: uart_d4i_up
                    x: 8
                    y: 41
                    width: 60
                    text: qsTr("Up")
                }

                Button {
                    id: uart_d4i_stepup
                    x: 68
                    y: 41
                    width: 60
                    text: qsTr("Step Up")
                }

                Button {
                    id: uart_d4i_down
                    x: 8
                    y: 62
                    width: 60
                    text: qsTr("Down")
                }

                Button {
                    id: uart_d4i_stepdown
                    x: 68
                    y: 62
                    width: 60
                    text: qsTr("Step Down")
                }

                Button {
                    id: uart_d4i_min
                    x: 8
                    y: 83
                    width: 120
                    text: qsTr("MİN")
                    font.pointSize: 12
                }

                Button {
                    id: uart_d4i_direct
                    x: 15
                    y: 110
                    width: 107
                    height: 19
                    text: qsTr("Direct")
                }

                Button {
                    id: uart_d4i_gotoscene
                    x: 15
                    y: 128
                    width: 107
                    height: 15
                    text: qsTr("Go to Scene")
                }


                Button {
                    id: uart_d4i_off
                    x: 144
                    y: 15
                    width: 47
                    height: 20
                    text: qsTr("Off")
                }

                ComboBox {
                    id: uart_d4i_scenenumber
                    x: 132
                    y: 128
                    width: 59
                    height: 15
                }
                TextEdit {
                    id: uart_d4i_directnumber
                    x: 134
                    y: 109
                    width: 58
                    height: 20
                    text: qsTr("Text Edit")
                    font.pixelSize: 12
                }


                Item {
                    id: uart_d4i_bar
                    x: 147
                    y: 41
                    width: 33
                    height: 68

                    property real progressValue: 0.5

                    Rectangle {
                        id: barBackground
                        anchors.fill: parent
                        color: "#dddddd"
                        radius: 4
                        border.color: "#aaaaaa"
                        border.width: 1

                        Rectangle {
                            id: barFill
                            width: parent.width
                            height: parent.height * uart_d4i_bar.progressValue
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottom: parent.bottom
                            scale: 0.9
                            color: "#feff85"
                            radius: 5
                        }
                    }
                }






            }
        }
    }
}
