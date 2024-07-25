import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: batterypage

    property string carMode: mainWindow.carMode
    property string chTime: (100 - socValue) * 2 + "min  TO FULL CHARGE"
    property bool chargingState: mainWindow.chargingState
    property bool lights: mainWindow.lights
    property bool mode1: mainWindow.mode1      // to switch modes
    property bool mode2: mainWindow.mode2
    property bool seatBelt: mainWindow.seatBelt
    property string smode: mainWindow.smode
    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property int speedValue: mainWindow.speedValue

    onMode1Changed: {
        if (mode1)
            carMode = "  s p o r t";
        else if (mode2)
            carMode = "  e  c h o";
        else
            carMode = "n o r m a l";
    }
    onMode2Changed: {
        if (mode1)
            carMode = "  s p o r t";
        else if (mode2)
            carMode = "  e  c h o";
        else
            carMode = "n o r m a l";
    }

    FontLoader {
        id: aldo

        source: "AldotheApache.ttf"
    }
    Image {
        id: batteryBG

        anchors.fill: parent
        source: "qrc:/img/bg.jpg"
    }
    BatteryGauge {
        id: batteryGauge

        scale: 0.40
        soVisiblity: false
        socValue: parent.socValue
        x: parent.width / 2 - (batteryGauge.width * 1.2)
        y: parent.height / 2 - (batteryGauge.height * 1.2)
    }
    Image {
        id: charging

        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/charging.png"
        width: parent.width / 17

        anchors {
            bottom: batteryGauge.bottom
            bottomMargin: -batteryGauge.height * 1.09
            left: batteryGauge.left
            leftMargin: batteryGauge.width - 15
        }
    }
    Text {
        id: chargingTime

        color: "lightsteelblue"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 23
        height: parent.height / 10
        text: qsTr(batterypage.chTime)
        width: parent.width / 10

        anchors {
            bottom: charging.top
            bottomMargin: -20
            horizontalCenter: charging.horizontalCenter
        }
    }
    Speed_Gauge {
        id: speedGauge

        scale: .5
        smode: batterypage.smode
        speedValue: batterypage.speedValue
        speedVisiblity: false

        anchors {
            left: batteryGauge.right
            leftMargin: 70
            top: parent.top
            topMargin: -320
        }
    }
    Text {
        id: modeText

        color: "white"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 40
        height: parent.height / 16
        text: qsTr("   M O D E")
        width: parent.width / 13

        anchors {
            horizontalCenter: speedGauge.horizontalCenter
            verticalCenter: chargingTime.verticalCenter
        }
    }
    Text {
        id: mode

        color: "#06c7f2"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 45
        height: parent.height / 16
        text: qsTr(batterypage.carMode)
        width: parent.width / 10.5

        anchors {
            horizontalCenter: modeText.horizontalCenter
            top: modeText.bottom
            topMargin: 10
        }
    }
    Image {
        id: modeLeft

        fillMode: Image.PreserveAspectFit
        height: mode.height - 10
        source: "qrc:/img/modeleft.png"

        anchors {
            bottom: mode.bottom
            right: mode.left
            rightMargin: 20
        }
    }
    Image {
        id: modeRight

        fillMode: Image.PreserveAspectFit
        height: mode.height - 10
        source: "qrc:/img/moderight.png"

        anchors {
            bottom: mode.bottom
            left: mode.right
            leftMargin: 20
        }
    }
    Image {
        id: beltAlarm

        fillMode: Image.PreserveAspectFit
        source: batterypage.seatBelt ? "qrc:/img/seat-belt-on.png" : "qrc:/img/seat-belt-off.png"
        width: parent.width / 38

        anchors {
            right: mode.right
            rightMargin: -20
            top: mode.bottom
            topMargin: 30
        }
    }
    Image {
        id: lightSignal

        fillMode: Image.PreserveAspectFit
        source: batterypage.lights ? "qrc:/img/car-lights-on.png" : "qrc:/img/car-lights-off.png"
        width: parent.width / 42

        anchors {
            right: beltAlarm.left
            rightMargin: 20
            verticalCenter: beltAlarm.verticalCenter
        }
    }
    Image {
        id: batteryLow

        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/low-battery-on.png"
        visible: batterypage.socValue < 26
        width: parent.width / 42
        x: 270

        anchors {
            bottom: parent.bottom
            bottomMargin: 40
        }
    }
    Image {
        id: batteryCharging

        fillMode: Image.PreserveAspectFit
        source: batterypage.chargingState ? "qrc:/img/charging-on.png" : "qrc:/img/charging-off.png"
        width: parent.width / 42

        anchors {
            bottom: batteryLow.bottom
            left: batteryLow.right
            leftMargin: 20
        }
    }
    Image {
        id: batteryTem

        fillMode: Image.PreserveAspectFit
        height: parent.height / 16
        source: "qrc:/img/battery_temperature.png"
        y: 120

        anchors {
            right: batteryLow.left
            rightMargin: 20
        }
    }
    Rectangle {
        id: temBar

        color: "#f2916e"
        height: 8
        width: batterypage.sotValue * 2

        anchors {
            left: batteryTem.right
            leftMargin: 30
            verticalCenter: batteryTem.verticalCenter
        }
    }
    Image {
        id: batteryHelth

        fillMode: Image.PreserveAspectFit
        height: parent.height / 16
        source: "qrc:/img/battery_soh.png"

        anchors {
            right: batteryLow.left
            rightMargin: 20
            top: batteryTem.bottom
            topMargin: 20
        }
    }
    Rectangle {
        id: helthBar

        color: "#05f228"
        height: 8
        width: batterypage.sohValue * 2

        anchors {
            left: batteryHelth.right
            leftMargin: 30
            verticalCenter: batteryHelth.verticalCenter
        }
    }
    Image {
        id: batteryCharge

        fillMode: Image.PreserveAspectFit
        height: parent.height / 16
        source: "qrc:/img/volt.png"

        anchors {
            right: batteryLow.left
            rightMargin: 20
            top: batteryHelth.bottom
            topMargin: 20
        }
    }
    Rectangle {
        id: chargeBar

        color: "#06c7f2"
        height: 8
        width: batterypage.socValue * 2

        anchors {
            left: batteryCharge.right
            leftMargin: 30
            verticalCenter: batteryCharge.verticalCenter
        }
    }
    HMchart {
        id: batteryChart

        max: 100
        min: 0
        rate: 10          //10 base  so sample every rate/10 per 500ms
        //lineColor: red
        value: batterypage.socValue

        anchors {
            left: batteryCharge.right
            top: batteryCharge.bottom
            topMargin: 0
        }
    }
    Rectangle {
        id: chartFooter

        anchors.left: batteryChart.left
        anchors.right: batteryChart.right
        anchors.top: batteryChart.bottom
        color: "lightsteelblue"
        height: 2
    }
    Text {
        id: chartMinValue

        color: "#06c7f2"
        font.pixelSize: 14
        text: "%0- "

        anchors {
            right: batteryChart.left
            top: batteryChart.bottom
            topMargin: -10
        }
    }
    Text {
        id: chartMiddValue

        color: "#06c7f2"
        font.pixelSize: 14
        text: "%50- "

        anchors {
            right: batteryChart.left
            top: batteryChart.bottom
            topMargin: -(batteryChart.max / 2) - 5
        }
    }
    Text {
        id: chartMaxValue

        color: "#06c7f2"
        font.pixelSize: 14
        text: "%100- "

        anchors {
            right: batteryChart.left
            top: batteryChart.bottom
            topMargin: -batteryChart.max - 5
        }
    }
    MouseArea {
        anchors.centerIn: parent
        height: 400
        width: 400

        onClicked: socValue = socValue - 2
        onWheel: socValue = socValue + 1
    }
}
