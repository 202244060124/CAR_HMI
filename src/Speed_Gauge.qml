import QtQuick 2.12

//import QtQuick.Window 2.12

Item {
    id: speed

    property int heatValue: 50
    property real heatend: 90
    property string smode: "reverse"
    property int speedValue: 150
    property bool speedVisiblity: true

    height: 1000
    visible: true
    width: 1000

    //    property real xArc : 1000/2      // this is to use it on Battery page *******
    //    property real yArc: 1000/2

    FontLoader {
        id: aldotheapache

        source: "AldotheApache.ttf"
    }
    Image {
        id: background

        anchors.centerIn: parent
        opacity: speedVisiblity ? 1 : 0
        //scale: 0.7
        source: "qrc:/img/gauge_circle.png"
    }
    Image {
        id: dash

        anchors.centerIn: parent
        height: background.height + 20
        source: "img/gauge_dashs.png"
        visible: speedVisiblity
        width: height
    }
    Text {
        id: t1

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "40"
        visible: speedVisiblity
        x: 160
        y: 470
    }
    Text {
        id: t2

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "0"
        visible: speedVisiblity
        x: 260
        y: 710
    }
    Text {
        id: t3

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "80"
        visible: speedVisiblity
        x: 250
        y: 245
    }
    Text {
        id: t4

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "120"
        visible: speedVisiblity
        x: 473
        y: 140
    }
    Text {
        id: t5

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "160"
        visible: speedVisiblity
        x: 700
        y: 245
    }
    Text {
        id: t6

        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 24
        text: "200"
        visible: speedVisiblity
        x: 790
        y: 470
    }
    Text {
        id: mode

        function select() {
            var d = 0;
            if (speed.smode == "parking") {
                d = 384;
            } else if (speed.smode == "neutral") {
                d = 451;
            } else if (speed.smode == "driving") {
                d = 518;
            } else if (speed.smode == "reverse") {
                d = 585;
            }
            return d;
        }

        color: "#726e6d"
        font.family: aldotheapache.name
        font.pointSize: 35
        text: "p    n    d    r"
        x: 400//select()
        y: 570
    }
    Image {
        id: modeselection

        source: "img/mode_selector.png"
        x: mode.select()
        y: 555

        Behavior on x {
            NumberAnimation {
                duration: 500
            }
        }
    }
    Text {
        id: modeselected

        function select() {
            var d = "n";
            if (speed.smode == "parking") {
                d = "p";
            } else if (speed.smode == "neutral") {
                d = "n";
            } else if (speed.smode == "driving") {
                d = "d";
            } else if (speed.smode == "reverse") {
                d = "r";
            }
            return d;
        }

        anchors.centerIn: modeselection
        color: "#05f228"
        font.family: aldotheapache.name
        font.pointSize: 35
        text: select()
    }
    SGauge {
        id: sp

        //scale: parent.scale
        anchors.centerIn: parent
        currentv: speed.speedValue
        end: (start - 5 + currentv * 1.125)
        height: (background.height) - 106
        linesize: 27
        name: speedVisiblity ? "km/h" : ""
        primcol: "#06c7f2"
        raduis: speedVisiblity ? width / 2 - (linesize / 2) : 200
        seccolor: "transparent"
        start: 138
        width: height

        //           xArc: speed.xArc
        //           yArc: speed.yArc

        Text {
            id: gvalue

            anchors.horizontalCenter: sp.horizontalCenter
            color: "#06c7f2"
            font.family: aldotheapache.name
            font.pointSize: 100
            text: speed.speedValue
            y: 280
        }
    }
    SGauge {
        id: heat

        anchors.centerIn: parent
        currentv: speed.heatValue
        end: (45 + (45 * speed.heatValue / 100)) <= 90 ? (45 + (45 * speed.heatValue / 100)) : 90
        height: (dash.height) - 315
        linesize: 10
        name: "  "
        primcol: "#f2916e"
        seccolor: "#f2916e"
        start: 45
        visible: speed.speedVisiblity
        width: height
    }
    Image {
        id: carheat

        scale: 0.8
        source: "img/car_temp.png"
        visible: speedVisiblity
        x: 600
        y: 830
    }
}
