import QtQuick
import QtQuick.Controls

Item {
    id: dali_page

    Rectangle {
        id: rectangle
        color: "#dfdfdf"
        anchors.fill: parent

        Label {
            id: label
            color: "#545454"
            text: qsTr("D4İ DALI")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 13
            anchors.topMargin: 8
            font.pointSize: 16
        }
    }
}

