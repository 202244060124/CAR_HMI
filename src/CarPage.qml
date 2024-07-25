import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: carpage

    property bool backlight: mainWindow.backlight
    property bool chargingState: mainWindow.chargingState
    property bool door: mainWindow.door
    property int flag0: 0
    property int flag1: 0
    property int flag2: 0
    property int flag3: 0
    property bool frontlight: mainWindow.frontlight
    property int heatValue: mainWindow.heatValue
    property bool lights: mainWindow.lights
    property bool seatBelt: mainWindow.seatBelt
    property int setPressure: mainWindow.setPressure
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
    //    Image {
    //        id: carBG
    //        anchors.fill: parent
    //        source: "qrc:/img/blank.jpg"
    //    }

    property bool turnRight: mainWindow.turnRight  //should be adjusted to Defualt 0 ->false

    anchors.fill: parent

    onBacklightChanged: {
        if (carpage.backlight)
            backon.start();
        else
            backoff.start();
    }
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
    //      Button{
    //          id:doors
    //          height: 50
    //          width: 50
    //          text: "DOOR"
    //          x:100
    //          y:50
    //          onClicked: carpage.door = !carpage.door

    //      }
    //      Button{
    //          id:fLight
    //          height: 50
    //          width: 50
    //          text: "Flight"
    //          x:100
    //          y:110
    //          onClicked: frontlight = !frontlight

    //        }
    //      Button{
    //          id:bLight
    //          height: 50
    //          width: 50
    //          text: "Blight"
    //          x:100
    //          y:170
    //          onClicked: backlight = !backlight

    //      }

    Text {
        id: textt

        color: "transparent"
        text: qsTr("text")
    }

    //      Timer{
    //          id: navigtionLoop
    //                  interval: 3000
    //                  repeat: true
    //                  running: true
    //                  triggeredOnStart: true
    //                  onTriggered: {
    //                      if(door & !frontlight){
    //                         first.start();
    //                           flag1 = 1;
    //                        }
    //                      else if(!door & frontlight){
    //                              second.start();
    //                              flag2=1; }
    //                      else if(door & frontlight){
    //                             third.start();
    //                             flag3=1;}
    //                      else{
    //                             zero.start();
    //                             flag0=1}
    //                    }
    //        }

    Image {
        id: outerTire2

        fillMode: Image.PreserveAspectFit
        opacity: 1
        rotation: -5
        source: carpage.tire2 < carpage.setPressure ? "qrc:/img/redTire.png" : "qrc:/img/greenTire.png"
        width: carpage.tire2 < carpage.setPressure ? parent.width / 38 : parent.width / 33.6

        anchors {
            right: tireRect2.right
            rightMargin: carpage.tire2 < carpage.setPressure ? -15 : -20
            top: tireRect2.bottom
            topMargin: carpage.tire2 < carpage.setPressure ? 5 : 3
        }
    }
    Image {
        id: outerTire3

        fillMode: Image.PreserveAspectFit
        opacity: 1
        rotation: -5
        source: carpage.tire3 < carpage.setPressure ? "qrc:/img/redTire.png" : "qrc:/img/greenTire.png"
        width: carpage.tire3 < carpage.setPressure ? parent.width / 38 : parent.width / 33.6

        anchors {
            right: tireRect3.right
            rightMargin: carpage.tire3 < carpage.setPressure ? -15 : -20
            top: tireRect3.bottom
            topMargin: carpage.tire3 < carpage.setPressure ? 5 : 3
        }
    }
    Image {
        id: outerTire4

        height: carpage.tire4 < carpage.setPressure ? parent.width / 26 : parent.width / 30
        opacity: 1
        rotation: 170
        source: carpage.tire4 < carpage.setPressure ? "qrc:/img/redTire.png" : "qrc:/img/greenTire.png"
        // fillMode:Image.PreserveAspectFit

        width: carpage.tire4 < carpage.setPressure ? parent.width / 39 : parent.width / 38

        anchors {
            bottom: tireRect4.bottom
            bottomMargin: carpage.tire4 < carpage.setPressure ? -30 : -28
            right: tireRect4.left
            rightMargin: 0
        }
    }
    Image {
        id: base

        anchors.verticalCenter: parent.verticalCenter
        opacity: 1
        scale: 0.6
        source: "qrc:/img/Base1.png"
        x: 295
    }
    Image {
        id: back

        // anchors.centerIn: parent
        //anchors.verticalCenter:  base.verticalCenter
        opacity: !carpage.backlight
        scale: 0.6
        source: "qrc:/img/Back1.png"
        x: 1030
        y: 150
    }
    Image {
        id: backwithlight

        // anchors.centerIn: parent
        //anchors.verticalCenter:  base.verticalCenter
        opacity: carpage.backlight
        scale: 0.6
        source: "qrc:/img/BackWithLight.png"
        x: 1025
        y: 150
    }
    Image {
        id: doorwithoutL

        opacity: 0
        scale: 0.63
        source: "qrc:/img/mainDoor.png"
        x: 290
        //anchors.horizontalCenter: base.horizontalCenter
        y: 74
    }
    Image {
        id: doorwithL

        opacity: 0
        scale: 0.66
        source: "qrc:/img/doorWithlight.png"
        x: 285
        //anchors.horizontalCenter: base.horizontalCenter
        y: 80
    }
    Image {
        id: lwithoutD

        opacity: 0
        scale: 0.64
        source: "qrc:/img/LighWithotDoor.png"
        x: 315
        //anchors.horizontalCenter: base.horizontalCenter
        y: 75
    }
    ParallelAnimation {
        id: zero

        NumberAnimation {
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: base
            to: 1
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag1 ? doorwithoutL : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag2 ? lwithoutD : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag3 ? doorwithL : textt;
            }
            to: 0
        }
    }
    //   }
    ParallelAnimation {
        id: first

        NumberAnimation {
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: doorwithoutL
            to: 1
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag3 ? doorwithL : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag2 ? lwithoutD : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
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
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: lwithoutD
            to: 1
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag1 ? doorwithoutL : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag3 ? doorwithL : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
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
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: doorwithL
            to: 1
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag1 ? doorwithoutL : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag2 ? lwithoutD : textt;
            }
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: {
                flag0 ? base : textt;
            }
            to: 0
        }
    }
    ParallelAnimation {
        id: backoff

        NumberAnimation {
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: back
            to: 1
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: backwithlight
            to: 0
        }
    }
    ParallelAnimation {
        id: backon

        NumberAnimation {
            duration: carpage.transTime
            from: 1
            property: "opacity"
            target: back
            to: 0
        }
        NumberAnimation {
            duration: carpage.transTime
            from: 0
            property: "opacity"
            target: backwithlight
            to: 1
        }
    }
    Speed_Gauge {
        id: naviGear

        scale: 0.25
        smode: carpage.smode
        speedValue: carpage.speedValue
        x: -300
        y: -205
    }
    BatteryGauge {
        id: naviBattery

        scale: 0.25
        socValue: carpage.socValue
        sohValue: carpage.sohValue
        sotValue: carpage.sotValue
        x: 1520
        y: 90
    }
    Rectangle {
        id: tireRect1

        border.color: "lightBlue"       //tire1 < setPressure ? "red" :"green"
        border.width: 3
        color: "transparent"
        height: 50
        radius: 20
        width: 75

        //      x:610
        //      y:340
        anchors {
            bottom: base.bottom
            bottomMargin: 160
            left: base.right
            leftMargin: -150
        }
    }
    Image {
        id: outerTire1

        height: carpage.tire1 < carpage.setPressure ? parent.width / 26 : parent.width / 28
        opacity: 1
        rotation: -10
        source: carpage.tire1 < carpage.setPressure ? "qrc:/img/redTire.png" : "qrc:/img/greenTire.png"
        // fillMode:Image.PreserveAspectFit

        width: carpage.tire1 < carpage.setPressure ? parent.width / 39 : parent.width / 34

        anchors {
            bottom: tireRect1.bottom
            bottomMargin: carpage.tire1 < carpage.setPressure ? -30 : -28
            right: tireRect1.left
            rightMargin: 10
        }
    }
    Text {
        id: pressure1

        color: carpage.tire1 < carpage.setPressure ? "red" : "green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: carpage.tire1 + " bar"

        anchors {
            horizontalCenter: tireRect1.horizontalCenter
            top: tireRect1.top
            topMargin: 5
        }
    }
    Text {
        id: temTire1

        color: "white"   //tire1 < setPressure ? "red" :"green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: " 71 C°"

        anchors {
            //topMargin: 5
            horizontalCenter: tireRect1.horizontalCenter
            top: pressure1.bottom
        }
    }
    Rectangle {
        id: tireRect2

        border.color: "lightBlue"       //tire1 < setPressure ? "red" :"green"
        border.width: 3
        color: "transparent"
        height: 50
        radius: 20
        width: 75

        //      x:610
        //      y:340
        anchors {
            bottom: base.bottom
            bottomMargin: 230
            right: base.left
            rightMargin: -150
        }
    }
    Text {
        id: pressure2

        color: carpage.tire2 < carpage.setPressure ? "red" : "green"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: carpage.tire2 + " bar"

        // anchors.centerIn: tireRect2
        anchors {
            horizontalCenter: tireRect2.horizontalCenter
            top: tireRect2.top
            topMargin: 5
        }
    }
    Text {
        id: temTire2

        color: "white"   //tire1 < setPressure ? "red" :"green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: " 70 C°"

        anchors {
            //topMargin: 5
            horizontalCenter: tireRect2.horizontalCenter
            top: pressure2.bottom
        }
    }
    Rectangle {
        id: tireRect3

        border.color: "lightBlue"       //tire1 < setPressure ? "red" :"green"
        border.width: 3
        color: "transparent"
        height: 50
        radius: 20
        width: 75

        //      x:610
        //      y:340
        anchors {
            bottom: back.bottom
            bottomMargin: 200
            right: back.left
            rightMargin: -100
        }
    }
    Text {
        id: pressure3

        color: carpage.tire3 < carpage.setPressure ? "red" : "green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: carpage.tire3 + " bar"

        anchors {
            horizontalCenter: tireRect3.horizontalCenter
            top: tireRect3.top
            topMargin: 5
        }
    }
    Text {
        id: temTire3

        color: "white"   //tire1 < setPressure ? "red" :"green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: " 73 C°"

        anchors {
            //topMargin: 5
            horizontalCenter: tireRect3.horizontalCenter
            top: pressure3.bottom
        }
    }
    Rectangle {
        id: tireRect4

        border.color: "lightBlue"       //tire1 < setPressure ? "red" :"green"
        border.width: 3
        color: "transparent"
        height: 50
        radius: 20
        width: 75

        //      x:610
        //      y:340
        anchors {
            bottom: back.bottom
            bottomMargin: 140
            left: back.right
            leftMargin: -60
        }
    }
    Text {
        id: pressure4

        color: carpage.tire4 < carpage.setPressure ? "red" : "green"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: carpage.tire4 + " bar"

        // anchors.centerIn: tireRect2
        anchors {
            horizontalCenter: tireRect4.horizontalCenter
            top: tireRect4.top
            topMargin: 5
        }
    }
    Text {
        id: temTire4

        color: "white"   //tire1 < setPressure ? "red" :"green"
        font.bold: true
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0.9
        text: " 71 C°"

        anchors {
            //topMargin: 5
            horizontalCenter: tireRect4.horizontalCenter
            top: pressure4.bottom
        }
    }

    //----------------signals-------------
    Image {
        id: beltAlarm

        fillMode: Image.PreserveAspectFit
        source: carpage.seatBelt ? "qrc:/img/seat-belt-on.png" : "qrc:/img/seat-belt-off.png"
        width: parent.width / 38

        anchors {
            bottom: parent.bottom
            bottomMargin: 40
            right: parent.right
            rightMargin: 300
        }
    }
    Image {
        id: lightSignal

        fillMode: Image.PreserveAspectFit
        source: carpage.lights ? "qrc:/img/car-lights-on.png" : "qrc:/img/car-lights-off.png"
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
        visible: carpage.socValue < 26
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
        source: carpage.chargingState ? "qrc:/img/charging-on.png" : "qrc:/img/charging-off.png"
        width: parent.width / 42

        anchors {
            bottom: batteryLow.bottom
            left: batteryLow.right
            leftMargin: 20
        }
    }
    DaignosticBuffer {
        id: daignostic

        x: 150
        y: 20
    }
}
