import QtQuick 2.12

//import QtQuick.Controls 2.15

Item {
    id: base

    property real currentv: 200
    property real end: -222
    property real finalv: (start + currentv) * (Math.PI / 180)
    property real linesize: 27
    property string name: "  "
    property color primcol: "#06c7f2"
    property int raduis: width / 2 - (linesize / 2)     // this is to use it on Battery page *******
    property color seccolor: "transparent"
    property real start: -3
    property real xArc: width / 2
    property real yArc: height / 2

    height: 675
    width: height

    //x:0
    //y:0

    FontLoader {
        id: aldotheapache

        source: "AldotheApache.ttf"
    }
    Text {
        id: gparam

        anchors.centerIn: parent
        color: "#ffffff"
        font.family: aldotheapache.name
        font.pointSize: 35
        text: name
    }
    Canvas {
        id: canvas

        property real degree: base.currentv
        property real enda: (Math.PI / 180) * base.end
        property real proga: -(Math.PI / 180) * (degree + 40)
        property real radius: parent.raduis
        property real starta: (Math.PI / 180) * base.start
        property real xvalue: parent.xArc
        property real yvalue: parent.yArc

        anchors.centerIn: parent
        anchors.fill: parent
        antialiasing: true
        height: base.height
        visible: true
        width: base.width

        onDegreeChanged: requestPaint()
        onPaint: {
            var ctx = getContext("2d");
            ctx.reset();
            ctx.beginPath();
            ctx.arc(xvalue, yvalue, radius, starta, enda, false);
            var gradient = ctx.createLinearGradient(0, 650, 650, 0);
            gradient.addColorStop(0, seccolor);
            gradient.addColorStop(0.44, primcol);
            gradient.addColorStop(1, primcol);
            ctx.strokeStyle = gradient;
            ctx.lineWidth = linesize;
            ctx.lineCap = 'square';

            //            ctx.shadowColor = "#2ed5fa";         // for shade and Glow if We wanted
            //            ctx.shadowOffsetX = 0;
            //            ctx.shadowOffsetY = 20;
            //            ctx.shadowBlur = 20;

            ctx.stroke();
        }
    }
}
