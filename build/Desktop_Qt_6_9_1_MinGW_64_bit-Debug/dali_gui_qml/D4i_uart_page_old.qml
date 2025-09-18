import QtQuick
import QtQuick.Controls 6.8



Item {
    id: uart_old

    Rectangle {
        id: rectangle
        color: "#dfdfdf"
        anchors.fill: parent

        Label {
            id: label
            x: 14
            y: 8
            width: 252
            height: 34
            color: "#707070"
            text: qsTr("UART CONTROLLER - OLD")
            font.pointSize: 16
        }

        Button {
            id: button
            width: 213
            height: 42
            text: qsTr("Press for use New with D4I")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 8
            anchors.topMargin: 4

            Connections {
                target: button
                function onClicked() { stackView.push("D4i_uart_page.qml") }
            }
        }

        Rectangle {
            id: rectangle1
            width: 341
            height: 264
            color: "#b3b3b3"
            anchors.verticalCenterOffset: -60
            anchors.horizontalCenterOffset: -135
            anchors.centerIn: parent

            RadioButton {
                id: updateloop
                x: 207
                y: 8
                text: qsTr("Update Loop")
                autoExclusive: false
                checkable: true
                autoRepeat: false
                z: 2
                font.pointSize: 13
                font.underline: true
                font.italic: true
                font.bold: true
                checked: true
                icon.color: "#00000000"


                onCheckedChanged: {
                    if (checked) {
                        console.log("Update Loop açıldı")
                        // işlem 1
                    } else {
                        console.log("Update Loop kapatıldı")
                        // işlem 2
                    }
                }



                Component.onCompleted: {
                    if (updateloop.checked) {
                        console.log("Başlangıçta update loop açık")
                        // işlem 1
                    } else {
                        console.log("Başlangıçta update loop kapalı")
                        // işlem 2
                    }
                }



            }

            Column {
                id: column
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 176
                anchors.topMargin: 31
                anchors.bottomMargin: 8
                spacing: 10

                Label {
                    id: label1
                    width: 134
                    height: 22
                    text: qsTr("Values")
                }

                Label {
                    id: label2
                    width: 71
                    height: 23
                    text: qsTr("led current")
                }

                Label {
                    id: label3
                    width: 71
                    height: 19
                    text: qsTr("led voltage")
                }

                Label {
                    id: label4
                    width: 71
                    height: 19
                    text: qsTr("vdd")
                }

                Label {
                    id: label5
                    text: qsTr("LDR/RAW")
                }

                Label {
                    id: label6
                    text: qsTr("NTC/RAW/CELCİUS")
                }

                Label {
                    id: label7
                    text: qsTr("CPU TEMP/RAW/CELCİUS")
                }

                Label {
                    id: label8
                    text: qsTr("pwmd2")
                }
            }

            Column {
                id: column1
                x: 181
                y: 31
                width: 80
                height: 225
                spacing: 13

                Label {
                    id: label9
                    text: qsTr("-------")
                }

                Label {
                    id: ledcurrentval
                    text: qsTr("ledcurrentval")
                }

                Label {
                    id: ledvoltageval
                    text: qsTr("ledvoltageval")
                }

                Label {
                    id: vddval
                    text: qsTr("vddval")
                }

                Label {
                    id: ldrrawval
                    text: qsTr("ldrrawval")
                }

                Label {
                    id: ntcrawval
                    text: qsTr("ntcrawval")
                }

                Label {
                    id: cpurawval
                    text: qsTr("cpurawval")
                }

                Label {
                    id: pwmd2val
                    text: qsTr("pwmd2val")
                }
            }

            Column {
                id: column2
                x: 267
                y: 147
                width: 68
                height: 94
                spacing: 13

                Label {
                    id: ldrval
                    text: qsTr("ldrval")
                }

                Label {
                    id: ntcval
                    text: qsTr("ntcval")
                }

                Label {
                    id: cpuval
                    text: qsTr("cpuval")
                }
            }


        }









    }

    Rectangle {
        id: rectangle2
        width: 342
        height: 142
        color: "#b3b3b3"
        anchors.horizontalCenterOffset: -135
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 150

        Label {
            id: label10
            x: 8
            y: 16
            text: qsTr("Change max brightness")
        }

        Label {
            id: label11
            x: 8
            y: 62
            width: 144
            height: 19
            text: qsTr("Change min brightness")
        }

        Label {
            id: label12
            x: 8
            y: 108
            width: 169
            height: 19
            text: qsTr("Change current brightness")
        }

        TextEdit {
            id: maxbrightness
            x: 185
            y: 16
            width: 53
            height: 20
            text: qsTr("max")
            font.pixelSize: 12
            z: 1
        }

        TextEdit {
            id: minbrightness
            x: 185
            y: 62
            width: 48
            height: 20
            text: qsTr("min")
            font.pixelSize: 12
            z: 1
        }

        TextEdit {
            id: currentbrightness
            x: 185
            y: 108
            width: 53
            height: 20
            text: qsTr("current")
            font.pixelSize: 12
            z: 1
        }

        Button {
            id: button_maxbrightness
            x: 246
            y: 8
            width: 90
            height: 36
            text: qsTr("OK")

            Connections {
                target: button_maxbrightness
                function onClicked() { console.log("clicked") }
            }
        }

        Button {
            id: button_minbrightness
            x: 246
            y: 53
            width: 90
            height: 36
            text: qsTr("OK")

            Connections {
                target: button_minbrightness
                function onClicked() { console.log("clicked") }
            }
        }

        Button {
            id: button_currentbrightness
            x: 246
            y: 100
            width: 90
            height: 36
            text: qsTr("OK")

            Connections {
                target: button_currentbrightness
                function onClicked() { console.log("clicked") }
            }
        }

        Rectangle {
            id: rectangle3
            x: 180
            y: 16
            width: 60
            height: 21
            color: "#ffffff"
            z: 0
        }

        Rectangle {
            id: rectangle4
            x: 180
            y: 61
            width: 60
            height: 21
            color: "#ffffff"
            z: 0
        }

        Rectangle {
            id: rectangle5
            x: 180
            y: 107
            width: 60
            height: 21
            color: "#ffffff"
            z: 0
        }


    }

    Rectangle {
        id: rectangle6
        width: 264
        height: 414
        color: "#b3b3b3"
        anchors.verticalCenterOffset: 15
        anchors.horizontalCenterOffset: 180
        anchors.centerIn: parent
    }
}







