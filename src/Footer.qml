import QtQuick 2.15

Item {
    id: root

    height: 47
    width: 395.5

    FontLoader {
        id: aldotheapache

        source: "AldotheApache.ttf"
    }
    Image {
        id: logo

        anchors.centerIn: root
        scale: 0.6
        source: "qrc:/img/logo.png"
    }
    Text {
        id: temp

        anchors.bottom: root.bottom
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 10
        text: qsTr("25 c")
        //anchors.left:logo.left
        //anchors.leftMargin: 20

        x: logo.x + logo.width + 20
    }
    Image {
        id: weather

        anchors.top: root.top
        scale: 0.6
        source: "qrc:/img/weather.png"
        x: temp.x + (temp.width - width) / 2
    }
    Text {
        id: time

        anchors.top: root.top
        anchors.topMargin: 10
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 13
        text: qsTr("09:00 AM")
        x: date.x + (date.width - width) / 2
    }
    Text {
        id: date

        anchors.bottom: root.bottom
        color: "white"
        font.family: aldotheapache.name
        font.pointSize: 10
        text: qsTr("13/12/2022")
        //anchors.left:logo.left
        //anchors.leftMargin: 20

        x: logo.x - width - 20
    }
    Timer {
        id: timer

        interval: 1000 // 1 second
        repeat: true
        running: true

        onTriggered: {
            time.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
            date.text = Qt.formatDateTime(new Date(), "dddd dd MMMM");
        }
    }
}
