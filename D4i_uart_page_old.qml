import QtQuick
import QtQuick.Controls


Item {
    id: uart_old
     objectName: "UartOldPage"


     //property bool manuelradiobutton : true


    Rectangle {
        id: rectangle
        color: "#dfdfdf"
        border.width: 0
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
            x: 385
            width: 159
            height: 42
            text: qsTr("Press for use New with D4I")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 96
            anchors.topMargin: 4

            Connections {
                target: button
                function onClicked() {  updateLoopEnabled = false; stackView.push("D4i_uart_page.qml"); updateloop.checked = false }
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

            // Süreli otomatik tetikleme için
            Timer {
                id: updateTimer
                interval: comboBox.currentText // ms cinsinden
                repeat: true
                running: false

                onTriggered: {
                     updateTimer.interval = parseInt(comboBox.currentText)

                    if(updateloop.checked){

                    button_get_values.clicked() // RoundButton'u tetikle

                    }
                }
            }

            // Süre seçimi için ComboBox
            ComboBox {
                id: comboBox
                x: 255
                width: 56
                height: 20
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 30
                anchors.topMargin: 31
                model: [ "400" , "500", "1000", "1250","1500","1750","2000", "5000"] // ms cinsinden
                currentIndex: 3 //1000ms
            }

            // RoundButton (manuel veya otomatik çalışacak)
            RoundButton {
                id: button_get_values
                x: 9
                y: 8
                width: 23
                height: 23
                text: ""


                onClicked: {
                    if(stackView.currentItem.objectName === "UartOldPage"){
                    console.log("Butona basıldı (manuel veya otomatik)")
                    // 📌 Buraya veri çekme / UART işlem koy
                        serialporthelper.send_command_old_driver();
                    }
                }
            }

            // Update Loop kontrolü
            Label {
                id: label15
                x: 317
                width: 19
                height: 16
                text: qsTr("ms")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 5
                anchors.topMargin: 35
            }





            CheckBox {
                id: updateloop
                x: 264
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 8
                anchors.topMargin: 9

                text: "Update Loop"
                font.bold: true

                checked: stackView.currentItem.objectName === "UartOldPage"

                onCheckedChanged: {
                    if (checked && stackView.currentItem.objectName === "UartOldPage") {
                        console.log("Update Loop açıldı")
                        updateTimer.interval = parseInt(comboBox.currentText)
                        updateTimer.start()

                    } else {
                        console.log("Update Loop kapatıldı")
                        updateTimer.stop()

                    }
                }

                Component.onCompleted: {
                    if (stackView.currentItem.objectName === "UartOldPage") {
                        updateTimer.interval = parseInt(comboBox.currentText)
                        updateTimer.start()
                    }
                }
            }




        }

        Rectangle {
            id: rectangle2
            x: 14
            y: 319
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
                    function onClicked() {
                        if (maxbrightness.text.length > 0) {
                            serialporthelper.sendData("H" + maxbrightness.text + "\r\n")
                            //textinput_uarttx.text = ""  // Gönderimden sonra temizle


                    }
                }
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
                    function onClicked() {
                        if (minbrightness.text.length > 0) {
                            serialporthelper.sendData("L" + minbrightness.text + "\r\n")
                            //textinput_uarttx.text = ""  // Gönderimden sonra temizle

                    }
                }
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
                    function onClicked() {
                        if (currentbrightness.text.length > 0) {
                            serialporthelper.sendData("I" + currentbrightness.text + "\r\n")
                            //textinput_uarttx.text = ""  // Gönderimden sonra temizle
                        }
                    }
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

        Row {
            id: connection_row
            x: 555
            y: 16
            width: 77
            height: 26
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 8
            anchors.topMargin: 16
            spacing: 4
            Label {
                id: connection_status
                text: qsTr("Status:")
            }

            Rectangle {
                id: uart_lamp
                x: 90
                y: -5
                width: 30
                height: 30
                opacity: serialporthelper.isConnected ? 1 : 0.5
                color: serialporthelper.isConnected ? "#7CFC00" : "red"
                radius: 15
                border.color: "#000000"
                border.width: 1
                Behavior {
                    NumberAnimation {
                        loops: Animation.Infinite
                        duration: 1000
                    }
                }
            }
        }

        Rectangle {
            id: uart_controls_manuel
            x: 378
            y: 328
            width: 234
            height: 124
            color: "#dfdfdf"
            border.width: 1
            z: 0

            Rectangle {
                id: uart_tx
                x: 10
                y: 16
                width: 66
                height: 17
                color: "#ffffff"
                z: 1

                TextInput {
                    id: textinput_uarttx
                    x: 0
                    y: 0
                    width: 66
                    height: 17
                    text: qsTr("")
                    font.pixelSize: 12
                    z: 1
                }

                Button {
                    id: button_tx_transmit
                    x: 72
                    y: -5
                    width: 65
                    height: 26
                    text: qsTr("Transmit")

                    onClicked: {
                        if (textinput_uarttx.text.length > 0) {
                            serialporthelper.sendData(textinput_uarttx.text + "\r\n")
                            textinput_uarttx.text = ""  // Gönderimden sonra temizle
                        }
                    }
                }
            }

            Rectangle {
                id: rectangle6
                x: 10
                y: -9
                width: 120
                height: 16
                color: "#dfdfdf"

                Label {
                    id: label13
                    x: 0
                    y: 0
                    text: qsTr("Uart Manuel Controller")
                }
            }
        }

        Rectangle {
            id: uart_receiver_writer
            x: 378
            y: 65
            width: 241
            height: 221
            color: "#dfdfdf"
            border.width: 1

            Rectangle {
                id: label_uartreceive
                x: 16
                y: -12
                width: 120
                height: 16
                color: "#dfdfdf"
                Label {
                    id: label14
                    x: 3
                    y: 0
                    text: qsTr("Uart Receiver Console")
                }
            }

            ScrollView {
                width: 225
                height: 202
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 8
                anchors.topMargin: 11

                TextArea {
                    id: textarea_uartrx
                    placeholderText: qsTr("Waiting Uart")
                    wrapMode: TextEdit.Wrap
                    readOnly: true
                    focus: true

                    onTextChanged: {


                        var lines = textarea_uartrx.text.split("\n");

                           if (lines.length > 30) {
                               lines = lines.slice(lines.length - 100);  // Son 100 satırı al
                               textarea_uartrx.text = lines.join("\n");  // Tekrar birleştir
                           }

                           // Her zaman en alta kay
                           textarea_uartrx.positionViewAtEnd();





                    }
                }











            }




        }









    }


    Connections {
        target: serialporthelper
        onDataReceived: {
            textarea_uartrx.text += message + "\n"
        }



        onOldDriverResponseHistoryFull: {
            ledcurrentval.text = serialporthelper.getParsedOldDriverValue(0)
            ldrrawval.text = serialporthelper.getParsedOldDriverValue(1)
            ntcrawval.text = serialporthelper.getParsedOldDriverValue(2)
            vddval.text = serialporthelper.getParsedOldDriverValue(3)
            ledvoltageval.text = serialporthelper.getParsedOldDriverValue(4)
            //labelC.text = serialporthelper.getParsedOldDriverValue(5)//analogdim
            cpurawval.text = serialporthelper.getParsedOldDriverValue(6)
            cpuval.text = serialporthelper.getParsedOldDriverValue(7)
            //labelC.text = serialporthelper.getParsedOldDriverValue(8)
            pwmd2val.text = serialporthelper.getParsedOldDriverValue(9)
            //labelB.text = serialporthelper.getParsedOldDriverValue(10)
            //labelC.text = serialporthelper.getParsedOldDriverValue(11)
            //labelA.text = serialporthelper.getParsedOldDriverValue(12)

            }






    }






    Component.onDestruction: {
        if (updateTimer.running) {
            updateTimer.stop()
            console.log("Sayfa siliniyor, timer durduruldu.")
        }
    }







}







