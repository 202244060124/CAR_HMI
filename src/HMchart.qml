import QtQuick 2.15

Item {
    id: batteryChart

    property color lineColor: "#06c7f2"
    property real lineX: 0
    property real lineY: height - value
    property int max: 100        //this the MAX value the line will saturate at
    property int min: 2         //this the MIN value the line will saturate at
    property int rate: 1        //this the rate of change in X-AXis
    property int step: 1        //this the rate of change in Y-AXis

    property int value: 50

    clip: true
    height: 150
    width: 200

    Behavior on lineY {
        NumberAnimation {
            duration: 200
        }
    }

    Timer {
        id: chargingTimer

        interval: 500
        repeat: true
        running: true

        onTriggered: {
            chartCanvas.requestPaint();
            batteryChart.lineX = batteryChart.lineX + rate / 10;
            batteryChart.lineY = height - batteryChart.value;
            //value =value+1
            if (batteryChart.lineX >= batteryChart.width - 20) {
                chartCanvas.x = chartCanvas.x - rate / 10;
                //chartCanvas.width = chartCanvas.width + 10 ;
            }
        }
    }
    Rectangle {
        id: underChartft

        //chart Footer
        anchors.fill: chartCanvas
        opacity: .05

        gradient: Gradient {
            GradientStop {
                color: "blue"
                position: 1
            }
            GradientStop {
                color: "transparent"
                position: 0
            }
        }
    }
    Canvas {
        id: chartCanvas

        property int canvasX: 0              //line position
        property int canvasY: batteryChart.lineY
        property int canvasbottom: height
        property color lColor: batteryChart.lineColor

        function clear() {
            var ctx = getContext('2d');
            batteryChart.lineX = 0;
            chartCanvas.x = 0;
            ctx.reset();
            chartCanvas.requestPaint();
        }

        height: batteryChart.height
        width: batteryChart.width * 5

        onPaint: {
            var ctx = getContext("2d");
            ctx.lineWidth = 4;
            ctx.strokeStyle = lColor;
            ctx.beginPath();               //battery value

            ctx.moveTo(canvasX, canvasY); // move to old point
            canvasX = batteryChart.lineX; //update the point
            canvasY = batteryChart.lineY;
            ctx.lineTo(canvasX, canvasY);// connect between them

            ctx.stroke();
            ctx.beginPath();              // area under battery value
            var gradient = ctx.createLinearGradient(canvasX, canvasY, canvasX, canvasbottom);
            gradient.addColorStop(1, "transparent");
            gradient.addColorStop(0, "#416870");
            ctx.fillStyle = gradient;
            ctx.fillRect(canvasX, canvasY, batteryChart.rate / 10, canvasbottom);
            ctx.stroke();

            //ctx.rect(canvasX, canvasY, 1,canvasY);
            //ctx.moveTo(canvasX,canvasbottom);
            // ctx.lineTo(canvasX,canvasbottom);
            // ctx.clip()
            //ctx.shadowColor = "#2ed5fa";
            // ctx.shadowOffsetX = 0;
            // ctx.shadowOffsetY = 5;
            // ctx.shadowBlur = 0.005;

        }

        MouseArea {
            id: clearChart

            anchors.fill: parent

            onClicked: {
                // batState = !batState
                chartCanvas.clear();
            }
            // onPositionChanged: batteryChart.requestPaint();

        }
    }
}
