import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: mainPage

    property bool backlight: mainWindow.backlight
    property bool chargingState: mainWindow.chargingState
    property bool door: mainWindow.door
    property int flag0: 0
    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property bool flasher: false
    property bool frontlight: mainWindow.frontlight
    property int heatValue: mainWindow.heatValue
    property bool lights: mainWindow.lights
    property bool seatBelt: mainWindow.seatBelt
    property bool smallPage: mainWindow.smallPage
    property string smode: mainWindow.smode
    property int socValue: mainWindow.socValue     // from 0 to 100
    property int sohValue: mainWindow.sohValue     // from 0 to 100
    property int sotValue: mainWindow.sotValue    // from 0 to 100

    property int speedValue: mainWindow.speedValue
    property int tire1: mainWindow.tire1
    property int tire2: mainWindow.tire2
    property int tire3: mainWindow.tire3
    property int tire4: mainWindow.tire4
    property int transTime: mainWindow.transTime
    property bool turnLeft: mainWindow.turnLeft
    property bool turnRight: mainWindow.turnRight  //should be adjusted to Defualt 0 ->false

    //------to_Adjust_Car2D_In_Different_Sizes----------
    property int xErorr: 350
    property int yErorr: 0

    //-----------------buttons_for_test--------------
    // RowLayout{
    //     id:lay1
    //     spacing: 2
    //     Button{
    //         width: 20
    //         height: 20
    //         text: "P"
    //         onClicked: smallPage =!smallPage
    //     }
    //     Button{
    //         width:10
    //         height: 20
    //         text: "<"
    //         onClicked: turnLeft =!turnLeft
    //     }
    //     Button{
    //         width: 20
    //         height: 20
    //         text: ">"
    //         onClicked: turnRight =!turnRight
    //     }

    //     Button{
    //         width: 10
    //         height: 20
    //         text: "belt"
    //         onClicked: seatBelt =!seatBelt
    //     }
    //     Button{
    //         width: 20
    //         height: 20
    //         text: "charge"
    //         onClicked: lowPower =!lowPower
    //     }
    // }

    //-------------------------------------

    anchors.fill: parent

    //---------------------------------carInMainPageConditions-----------------------

    onDoorChanged: {
        if (door & !frontlight) {
            first.start();
            flag1 = 1;
            flag0 = 0;
            flag2 = 0;
            flag3 = 0;
        } else if (!door & frontlight) {
            second.start();
            flag2 = 1;
            flag0 = 0;
            flag1 = 0;
            flag3 = 0;
        } else if (door & frontlight) {
            third.start();
            flag3 = 1;
            flag0 = 0;
            flag1 = 0;
            flag2 = 0;
        } else {
            zero.start();
            flag0 = 1;
            flag1 = 0;
            flag2 = 0;
            flag3 = 0;
        }
    }
    onFrontlightChanged: {
        if (door & !frontlight) {
            first.start();
            flag1 = 1;
            flag0 = 0;
            flag2 = 0;
            flag3 = 0;
        } else if (!door & frontlight) {
            second.start();
            flag2 = 1;
            flag0 = 0;
            flag1 = 0;
            flag3 = 0;
        } else if (door & frontlight) {
            third.start();
            flag3 = 1;
            flag0 = 0;
            flag1 = 0;
            flag2 = 0;
        } else {
            zero.start();
            flag0 = 1;
            flag1 = 0;
            flag2 = 0;
            flag3 = 0;
        }
    }

    FontLoader {
        id: aldo

        source: "AldotheApache.ttf"
    }
    BatteryGauge {
        // width : 220
        //height: 220
        scale: 0.45
        socValue: mainPage.socValue
        sohValue: mainPage.sohValue
        sotValue: mainPage.sotValue
        x: 1270
        y: -40
    }
    Speed_Gauge {
        heatValue: mainPage.heatValue
        scale: 0.45
        smode: mainPage.smode
        speedValue: mainPage.speedValue
        x: -150
        y: -255
    }
    //-------------------------------Tires_Pressure----------------
    Rectangle {
        anchors.centerIn: parent
        color: "transparent"
        height: 400
        visible: !mainPage.smallPage
        width: 500

        //-------------------------------Tire1----------------
        Rectangle {
            id: fRightTire

            color: mainPage.tire1 < 26 ? "red" : "green"
            height: 40
            opacity: 1
            radius: 10
            width: 25
            x: 160
            y: 120
        }
        Image {
            id: arrow1

            fillMode: Image.PreserveAspectFit
            opacity: 1
            rotation: -45
            source: mainPage.tire1 < 26 ? "qrc:/img/red_arrow.png" : "qrc:/img/green_arrow.png"
            width: parent.width / 25

            anchors {
                bottom: fRightTire.verticalCenter
                bottomMargin: -10
                right: fRightTire.left
                rightMargin: 10
            }
        }
        Text {
            id: pressure1

            color: mainPage.tire1 < 26 ? "red" : "green"
            font.bold: true
            font.family: aldo.name
            font.pixelSize: 20
            opacity: .8
            text: mainPage.tire1 + " bar"

            anchors {
                bottom: arrow1.top
                right: arrow1.left
            }
        }
        //-------------------------------Tire2----------------
        Rectangle {
            id: fLeftTire

            color: mainPage.tire2 < 26 ? "red" : "green"
            height: 40
            opacity: 1
            radius: 10
            width: 25
            x: 280
            y: 120
        }
        Image {
            id: arrow2

            fillMode: Image.PreserveAspectFit
            opacity: 1
            rotation: 45
            source: mainPage.tire2 < 26 ? "qrc:/img/red_arrow180.png" : "qrc:/img/green_arrow180.png"
            width: parent.width / 25

            anchors {
                bottom: fLeftTire.verticalCenter
                bottomMargin: -10
                left: fLeftTire.right
                leftMargin: 10
            }
        }
        Text {
            id: pressure2

            color: mainPage.tire2 < 26 ? "red" : "green"
            font.bold: true
            font.family: aldo.name
            font.pixelSize: 20
            opacity: .8
            text: mainPage.tire2 + " bar"

            anchors {
                bottom: arrow2.top
                left: arrow2.right
            }
        }
        //-------------------------------Tire3----------------
        Rectangle {
            id: bRightTire

            color: mainPage.tire3 < 26 ? "red" : "green"
            height: 40
            opacity: 1
            radius: 10
            width: 25
            x: 148
            y: 320
        }
        Image {
            id: arrow3

            fillMode: Image.PreserveAspectFit
            opacity: 1
            rotation: -45
            source: mainPage.tire2 < 26 ? "qrc:/img/red_arrow.png" : "qrc:/img/green_arrow.png"
            width: parent.width / 25

            anchors {
                bottom: bRightTire.verticalCenter
                bottomMargin: -10
                right: bRightTire.left
                rightMargin: 10
            }
        }
        Text {
            id: pressure3

            color: mainPage.tire3 < 26 ? "red" : "green"
            font.bold: true
            font.family: aldo.name
            font.pixelSize: 20
            opacity: .8
            text: mainPage.tire3 + " bar"

            anchors {
                bottom: arrow3.top
                right: arrow3.left
            }
        }
        //-------------------------------Tire4----------------
        Rectangle {
            id: bLeftTire

            color: mainPage.tire4 < 26 ? "red" : "green"
            height: 40
            opacity: 1
            radius: 10
            width: 25
            x: 293
            y: 320
        }
        Image {
            id: arrow4

            fillMode: Image.PreserveAspectFit
            opacity: 1
            rotation: 45
            source: mainPage.tire4 < 26 ? "qrc:/img/red_arrow180.png" : "qrc:/img/green_arrow180.png"
            width: parent.width / 25

            anchors {
                bottom: bLeftTire.verticalCenter
                bottomMargin: -10
                left: bLeftTire.right
                leftMargin: 10
            }
        }
        Text {
            id: pressure4

            color: mainPage.tire4 < 26 ? "red" : "green"
            font.bold: true
            font.family: aldo.name
            font.pixelSize: 20
            opacity: .8
            text: mainPage.tire4 + " bar"

            anchors {
                bottom: arrow4.top
                left: arrow4.right
            }
        }
        Image {
            id: carElevation

            //tires Pressure in MainPage
            fillMode: Image.PreserveAspectFit
            opacity: .4
            scale: 0.8
            source: "qrc:/img/Elevation.png"
            x: 30

            MouseArea {
                anchors.fill: parent

                onClicked: smallPage = !smallPage
            }
        }
    }

    //---------------------------------carInMainPageBody-----------------------
    Rectangle {
        id: carItem

        anchors.fill: parent
        color: "transparent"
        visible: mainPage.smallPage

        Text {
            id: textt

            color: "transparent"
            text: qsTr("text")
        }
        Image {
            id: base

            //anchors.verticalCenter:  parent.verticalCenter

            opacity: 1
            scale: 0.6
            source: "qrc:/img/Base1.png"
            x: 295 + xErorr
            y: 55 + yErorr

            MouseArea {
                anchors.fill: parent

                onClicked: mainPage.smallPage = !mainPage.smallPage
            }
        }
        Image {
            id: doorwithoutL

            opacity: 0
            scale: 0.65
            source: "qrc:/img/mainDoor.png"
            x: 290 + xErorr
            //anchors.horizontalCenter: base.horizontalCenter
            y: 74 + yErorr
        }
        Image {
            id: doorwithL

            opacity: 0
            scale: 0.69
            source: "qrc:/img/doorWithlight.png"
            x: 280 + xErorr
            //anchors.horizontalCenter: base.horizontalCenter
            y: 80 + yErorr
        }
        Image {
            id: lwithoutD

            opacity: 0
            scale: 0.64
            source: "qrc:/img/LighWithotDoor.png"
            x: 315 + xErorr
            //anchors.horizontalCenter: base.horizontalCenter
            y: 75 + yErorr
        }
        ParallelAnimation {
            id: zero

            NumberAnimation {
                duration: transTime
                from: 0
                property: "opacity"
                target: base
                to: 1
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag1 ? doorwithoutL : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag2 ? lwithoutD : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag3 ? doorwithL : textt;
                }
                to: 0
            }
        }
        ParallelAnimation {
            id: first

            NumberAnimation {
                duration: mainPage.transTime
                from: 0
                property: "opacity"
                target: doorwithoutL
                to: 1
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag3 ? doorwithL : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag2 ? lwithoutD : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag0 ? base : textt;
                }
                to: 0
            }
        }
        ParallelAnimation {
            id: second

            NumberAnimation {
                duration: mainPage.transTime
                from: 0
                property: "opacity"
                target: lwithoutD
                to: 1
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag1 ? doorwithoutL : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag3 ? doorwithL : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag0 ? base : textt;
                }
                to: 0
            }
        }
        ParallelAnimation {
            id: third

            NumberAnimation {
                duration: mainPage.transTime
                from: 0
                property: "opacity"
                target: doorwithL
                to: 1
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag1 ? doorwithoutL : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag2 ? lwithoutD : textt;
                }
                to: 0
            }
            NumberAnimation {
                duration: mainPage.transTime
                from: 1
                property: "opacity"
                target: {
                    flag0 ? base : textt;
                }
                to: 0
            }
        }
    }

    //---------------------------------carSignals-----------------------

    Timer {
        id: turnTimer

        interval: 500
        repeat: true
        running: mainPage.turnRight || mainPage.turnLeft

        onTriggered: flasher = !flasher
    }
    Image {
        id: rightSignal

        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_right.png"
        visible: mainPage.turnRight && flasher
        width: parent.width / 30
        x: parent.width - parent.width / 3
        y: parent.height / 5
    }
    Image {
        id: leftSignal

        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/turn-signal_left.png"
        visible: mainPage.turnLeft && flasher
        width: parent.width / 30
        x: parent.width / 3.5
        y: parent.height / 5
    }
    Image {
        id: beltAlarm

        fillMode: Image.PreserveAspectFit
        //        anchors{
        //            bottom: Speed_Gauge.bottom
        //            bottomMargin: 30
        //            right: Speed_Gauge.right
        //            rightMargin: 30
        //        }

        opacity: mainPage.seatBelt ? 2 : 0.3
        source: mainPage.seatBelt ? "qrc:/img/red_belt.png" : "qrc:/img/seat-belt-off.png"
        width: seatBelt ? parent.width / 30 : parent.width / 33
        x: 500
        y: 400
    }
    Image {
        id: pressureAlarm

        // visible: tire1<26 || tire2<26 || tire3<26 || tire4<26
        fillMode: Image.PreserveAspectFit
        source: mainPage.tire1 < 26 || mainPage.tire2 < 26 || mainPage.tire3 < 26 || mainPage.tire4 < 26 ? "qrc:/img/tireP-obb.png" : "qrc:/img/tireP-off.png"
        width: parent.width / 35

        anchors {
            bottom: beltAlarm.top
            bottomMargin: 20
            right: beltAlarm.right
            rightMargin: -45
        }
    }
    Image {
        id: lightSignal

        fillMode: Image.PreserveAspectFit
        source: mainPage.lights ? "qrc:/img/car-lights-on.png" : "qrc:/img/car-lights-off.png"
        width: parent.width / 42

        anchors {
            bottom: pressureAlarm.top
            bottomMargin: 30
            right: pressureAlarm.right
            rightMargin: -25
        }
    }
    Image {
        id: chargingstatee

        //y:450
        anchors.verticalCenter: beltAlarm.verticalCenter
        scale: 0.5
        source: mainPage.chargingState ? "qrc:/img/charging-on.png" : "qrc:/img/charging-off.png"
        x: 1325
    }
    Image {
        id: chargeAlarm

        fillMode: Image.PreserveAspectFit
        scale: 0.5
        source: lowPower ? "qrc:/img/low-battery-on.png" : ""
        visible: mainPage.socValue < 26

        anchors {
            left: chargingstatee.left
            leftMargin: -50
            verticalCenter: pressureAlarm.verticalCenter
        }
    }
}
