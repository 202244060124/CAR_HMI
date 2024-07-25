import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Qt.labs.qmlmodels 1.0

Item {
    id: dbPage

    property int batterycharge: 50
    property int batterytemp: 25
    property int battnum: f1 + f2 + f3
    property int c: 0
    property bool carfusesblow: false
    property bool commproblem: false
    //property bool electricalfault: Dimingcarlights? true:false || carfusesblow? true:false
    property bool dimingcarlights: false
    property int f1: batterycharge < 10 ? 1 : 0
    property int f2: batterytemp < 15 ? 1 : 0
    property int f3: batterytemp > 30 ? 1 : 0
    property int f4: dimingcarlights ? 1 : 0
    property int f5: carfusesblow ? 1 : 0
    property int f6: limitedpower ? 1 : 0
    property int f7: settingsfault ? 1 : 0
    property int f8: nupdate ? true : false
    property int flags: f4 + f5 + f6 + f7
    property int g1: 0
    property int g2: 0
    property int g3: 0
    //property bool notifiactionSP: false
    property bool generalfault: false
    property bool k1: f1 ? true : false
    property bool k2: f2 ? true : false
    property bool k3: f3 ? true : false
    property bool k4: f4 ? true : false
    property bool k5: f5 ? true : false
    property bool k6: f6 ? true : false
    property bool k7: f7 ? true : false
    property bool k8: f8 ? true : false
    property bool limitedpower: false
    property bool notifiactionB: false
    property bool notifiactionSE: false
    property bool nupdate: false
    property bool settingsfault: commproblem ? true : false

    x: 200

    FontLoader {
        id: aldo

        source: "AldotheApache.ttf"
    }
    // Image {
    //     id: info
    //     source: "qrc:/img/info.png"
    //     x:(parent.width/2)-(info.width/2)
    //     y:50
    // }

    //-------------------------------------------------------test buttons -----------------------------------
    // Button{
    //     x:-80
    //     y:30
    //     height: 50
    //     width: 50
    //     text: "btch"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        f1=1
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:80
    //     height: 50
    //     width: 50
    //     text: "<15"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        batterytemp=10
    //        //f2=1
    //    }
    // }
    // }
    // Button{
    //     x:-130
    //     y:80
    //     height: 50
    //     width: 50
    //     text: ">30"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        batterytemp=40;
    //        //f2=1
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:130
    //     height: 50
    //     width: 50
    //     text: "lights"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        dimingcarlights=true
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:180
    //     height: 50
    //     width: 50
    //     text: "fuses"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        carfusesblow=true
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:230
    //     height: 50
    //     width: 50
    //     text: "lp"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        f6=1
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:280
    //     height: 50
    //     width: 50
    //     text: "sett"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        commproblem=true
    //    }
    // }
    // }
    // Button{
    //     x:-80
    //     y:310
    //     height: 50
    //     width: 50
    //     text: "up"
    //MouseArea{
    //    anchors.fill: parent
    //    onClicked: {
    //        nupdate=true
    //    }
    // }
    // }

    //-----------------------------------------------------------------------------------------------

    // onBatterytempChanged: {
    //     if(15<batterytemp<30){
    //         f2==0;
    //     } else if (batterytemp<15) {
    //         f2==1;
    //     } else if(batterytemp>30){
    //         f2==1;
    //     }
    // }
    //onF1Changed: {
    //    if(f1==1){
    //        if(c==1){
    //            battmoredetails1.opacity=1
    //        battmoredetails1.text="the battery charge percentage is lower than 10% .
    //please recharge your battery"
    //            battmoredetails2.opacity=0
    //            battmoredetails2.text="Your battery temperature is lower than the allowed
    //   efficient limit and this will affect on your car performance!
    //   PLEASE check the nearest dealer to fix the problem"
    //        } else if(c==2){
    //             battmoredetails2.opacity=1
    //            battmoredetails2.text="the battery charge percentage is lower than 10% .
    //    please recharge your battery"
    //                battmoredetails1.opacity=0
    //                battmoredetails1.text="Your battery temperature is lower than the allowed
    //       efficient limit and this will affect on your car performance!
    //       PLEASE check the nearest dealer to fix the problem"
    //        }

    //    }
    //}

    //--------------------------date&time detection------------------------ //

    //--------battery faults--------------
    Timer {
        id: timer1

        interval: 1000 // 1 second
        repeat: false
        running: k1

        onTriggered: {
            c = 1;
            if (battnum == 1) {
                batttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet.text = "the battery charge percentage is lower th..";
                battNoDet.text = "1";
                battdot.opacity = 1;
                background1.height = 50;

                // battmoredetails2.opacity=0
                // battmoredetails1.opacity=1
                battmoredetails1.text = "the battery charge percentage is lower than the specific
efficient value
you need to shut the car down and recharge it";
            } else if (battnum == 2 || battnum == 3) {
                batttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet1.text = "the battery charge percentage is lower th..";
                battNoDet1.text = "2";
                battdot.opacity = 1;
                background1.height = 80;

                // battmoredetails2.opacity=1
                battmoredetails2.text = "the battery charge percentage is lower than the specific
efficient value
you need to shut the car down and recharge it";
                // battmoredetails1.opacity=0
            }
        }
    }
    Timer {
        id: timer2

        interval: 1000 // 1 second
        repeat: false
        running: k2

        onTriggered: {
            c = c + 2;
            if (battnum == 1) {
                batttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet.text = "the battery temperature is lower than the..";
                battNoDet.text = "1";
                battdot.opacity = 1;
                background1.height = 50;
                battmoredetails1.text = "the battery temperature is lower than the specific allowed
efficient limit and this will affect on car performance!
PLEASE check the nearest dealer to fix the problem";
                // battmoredetails2.opacity=0

            } else if (battnum == 2 || battnum == 3) {
                batttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet1.text = "the battery temperature is lower than the..";
                battNoDet1.text = "2";
                battdot.opacity = 1;
                background1.height = 80;
                battmoredetails2.text = "the battery temperature is lower than the specific allowed
efficient limit and,this will affect on car performance!
PLEASE check the nearest dealer to fix the problem";
                //battmoredetails1.opacity=0

            }
        }
    }
    Timer {
        id: timer3

        interval: 1000 // 1 second
        repeat: false
        running: k3

        onTriggered: {
            c = c + 4;
            if (battnum == 1) {
                batttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet.text = "the battery temperature is higher than the..";
                battNoDet.text = "1";
                battdot.opacity = 1;
                background1.height = 50;
                battmoredetails1.text = "the battery temperature is heigher than the specific allowed
efficient limit and this will affect on car performance!
PLEASE shut down the car to rest the battery";
                // battmoredetails2.opacity=0
            } else if (battnum == 2 || battnum == 3) {
                batttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                battdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                batteventDet1.text = "the battery temperature is higher than the..";
                battNoDet1.text = "2";
                battdot.opacity = 1;
                background1.height = 80;
                battmoredetails2.text = "the battery temperature is heigher than the specifc allowed
efficient limit and this will affect on car performance!
PLEASE shut down the car to rest the battery";
                // battmoredetails1.opacity=0
            }
        }
    }
    //-----------settings faults-----------
    Timer {
        id: timer4

        interval: 1000 // 1 second
        repeat: false
        running: k4

        onTriggered: {
            if (flags == 1) {
                setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet.text = "car lights start to dim due to electrical f..";
                settNoDet.text = "1";
                setdot.opacity = 1;
                background.height = 50;
                settmoredetails1.text = "car lights start to dim due to electrical fault as the
elecreical system is malfunctioning due to low system
voltage, loose wires or dying battery
check the nearset dealer to check the car";
            } else if (flags == 2) {
                setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet1.text = "car lights start to dim due to electrical f..";
                settNoDet1.text = "2";
                setdot.opacity = 1;
                background.height = 80;
                settmoredetails2.text = "car lights start to dim due to electrical fault as the
    elecreical system is malfunctioning due to low system
    voltage, loose wires or dying battery
    check the nearset dealer to check the car";
            } else if (flags == 3) {
                setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet2.text = "car lights start to dim due to electrical f..";
                settNoDet2.text = "3";
                setdot.opacity = 1;
                background.height = 100;
                settmoredetails3.text = "car lights start to dim due to electrical fault as the
    elecreical system is malfunctioning due to low system
    voltage, loose wires or dying battery
    check the nearset dealer to check the car";
            } else if (flags == 4) {
                setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet3.text = "car lights start to dim due to electrical f..";
                settNoDet3.text = "4";
                setdot.opacity = 1;
                background.height = 130;
                settmoredetails3.text = "car lights start to dim due to electrical fault as the
    elecreical system is malfunctioning due to low system
    voltage, loose wires or dying battery
    check the nearset dealer to check the car";
            }
        }
    }
    Timer {
        id: timer5

        interval: 1000 // 1 second
        repeat: false
        running: k5

        onTriggered: {
            if (flags == 1) {
                setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet.text = "car fuses blow out due to electrical fault";
                settNoDet.text = "1";
                setdot.opacity = 1;
                background.height = 50;
                settmoredetails1.text = "car fuses blow out due to electrical fault as the system
of car is malfunctioning due to a short circuit, the car
needs to be examined well
check the nearset dealer to repair the fault";
            } else if (flags == 2) {
                setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet1.text = "car fuses blow out due to electrical fault";
                settNoDet1.text = "2";
                setdot.opacity = 1;
                background.height = 80;
                settmoredetails2.text = "car fuses blow out due to electrical fault as the system
of car is malfunctioning due to a short circuit, the car
needs to be examined well
check the nearset dealer to repair the fault";
            } else if (flags == 3) {
                setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet2.text = "car fuses blow out due to electrical fault";
                settNoDet2.text = "3";
                setdot.opacity = 1;
                background.height = 100;
                settmoredetails3.text = "car fuses blow out due to electrical fault as the system
of car is malfunctioning due to a short circuit, the car
needs to be examined well
check the nearset dealer to repair the fault";
            } else if (flags == 4) {
                setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet3.text = "car fuses blow out due to electrical fault";
                settNoDet3.text = "4";
                setdot.opacity = 1;
                background.height = 130;
                settmoredetails4.text = "car fuses blow out due to electrical fault as the system
of car is malfunctioning due to a short circuit, the car
needs to be examined well
check the nearset dealer to repair the fault";
            }
        }
    }
    Timer {
        id: timer6

        interval: 1000 // 1 second
        repeat: false
        running: k6

        onTriggered: {
            if (flags == 1) {
                setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet.text = "car is getting into limited power mode";
                settNoDet.text = "1";
                setdot.opacity = 1;
                background.height = 50;
                settmoredetails1.text = "a deep issue in car electrical system occuredit may be due
to over voltage,short circuit or battery temperature
stop your car immediately and check it";
            } else if (flags == 2) {
                setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet1.text = "car is getting into limited power mode";
                settNoDet1.text = "2";
                setdot.opacity = 1;
                background.height = 80;
                settmoredetails2.text = "a deep issue in car electrical system occured it may be due
to over voltage,short circuit or battery temperature
stop your car immediately and check it";
            } else if (flags == 3) {
                setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet2.text = "car is getting into limited power mode";
                settNoDet2.text = "3";
                setdot.opacity = 1;
                background.height = 100;
                settmoredetails3.text = "a deep issue in car electrical system occured it may be due
to over voltage,short circuit or battery temperature
stop your car immediately and check it";
            } else if (flags == 4) {
                setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet3.text = "car is getting into limited power mode";
                settNoDet3.text = "4";
                setdot.opacity = 1;
                background.height = 130;
                settmoredetails4.text = "a deep issue in car electrical system occured it may be due
to over voltage,short circuit or battery temperature
stop your car immediately and check it";
            }
        }
    }
    Timer {
        id: timer7

        interval: 1000 // 1 second
        repeat: false
        running: k7

        onTriggered: {
            if (flags == 1) {
                setttimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet.text = "the car communication system is malfunction";
                settNoDet.text = "1";
                setdot.opacity = 1;
                background.height = 50;
                settmoredetails1.text = "the car communication system is malfunctioning due
to a fault in car electronic system";
            } else if (flags == 2) {
                setttimeDet1.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet1.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet1.text = "the car communication system is malfunct..";
                settNoDet1.text = "2";
                setdot.opacity = 1;
                background.height = 80;
                settmoredetails2.text = "the car communication system is malfunctioning due to a
fault occured in car electronics system";
            } else if (flags == 3) {
                setttimeDet2.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet2.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet2.text = "the car communication system is malfunct..";
                settNoDet2.text = "3";
                setdot.opacity = 1;
                background.height = 100;
                settmoredetails3.text = "the car communication system is malfunctioning due to a
fault occured in car electronics system";
            } else if (flags == 4) {
                setttimeDet3.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                settdateDet3.text = Qt.formatDateTime(new Date(), "dd MMMM");
                setteventDet3.text = "the car communication system is malfunct..";
                settNoDet3.text = "4";
                setdot.opacity = 1;
                background.height = 130;
                settmoredetails4.text = "the car communication system is malfunctioning due to a
fault occured in car electronics system";
            }
        }
    }
    //----------update notification-------------
    Timer {
        id: timer8

        interval: 1000 // 1 second
        repeat: false
        running: k8

        onTriggered: {
            if (f8 == 1) {
                uptimeDet.text = Qt.formatDateTime(new Date(), "hh:mm:ss");
                updateDet.text = Qt.formatDateTime(new Date(), "dd MMMM");
                upeventDet.text = "a new update is available for your system";
                upNoDet.text = "1";
                updatedot.opacity = 1;
                background2.height = 50;
                updatemoredetails.text = "there is a new update with new features has uploaded to
 your system , upgrade to enjoy the new features";
            }
        }
    }
    //---------------------------------------------------------------------------//

    //------------selection table layout----------------
    Text {
        id: info

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("fault information")
        //x:(parent.width/2)-(info.width/2)
        y: 50

        MouseArea {
            id: infoo

            anchors.fill: parent

            onClicked: {
                infodetails.start();
                right1.source = "qrc:/img/arrow-down-sign.png";
            }
        }
    }
    Rectangle {
        id: selection

        color: "#06c7f2"
        height: 23
        opacity: 0.5
        width: 480
        // x:300
        y: -1000
    }
    Text {
        id: sett

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("settings")

        anchors {
            left: selection.left
            leftMargin: 20
            verticalCenter: selection.verticalCenter
        }
        MouseArea {
            id: select

            anchors.fill: parent

            onClicked: {
                g1 = 1;
                settdetails.start();
                if (g2 == 1) {
                    battdetails1.start();
                } else if (g3 == 1) {
                    upddetails1.start();
                }
                g2 = 0;
                g3 = 0;
                right2.source = "qrc:/img/arrow-down-sign.png";
                pagesup.opacity = 0.5;
                right3.source = "qrc:/img/next.png";
                right4.source = "qrc:/img/next.png";
                setdot.opacity = 0;
            }
        }
    }
    Image {
        id: right2

        scale: 0.2
        source: "qrc:/img/next.png"

        anchors {
            left: selection.left
            leftMargin: -20
            verticalCenter: selection.verticalCenter
        }
    }
    Text {
        id: batt

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("battery")

        anchors {
            horizontalCenter: selection.horizontalCenter
            verticalCenter: selection.verticalCenter
        }
        MouseArea {
            id: selectt

            anchors.fill: parent

            onClicked: {
                g2 = 1;
                battdetails.start();
                if (g1 == 1) {
                    settdetails1.start();
                } else if (g3 == 1) {
                    upddetails1.start();
                }
                g3 == 0;
                g1 == 0;
                right3.source = "qrc:/img/arrow-down-sign.png";
                pagesup1.opacity = 0.5;
                right2.source = "qrc:/img/next.png";
                right4.source = "qrc:/img/next.png";
                battdot.opacity = 0;
            }
        }
    }
    Image {
        id: right3

        scale: 0.2
        source: "qrc:/img/next.png"

        anchors {
            left: batt.left
            leftMargin: -42
            verticalCenter: selection.verticalCenter
        }
    }
    Text {
        id: updates

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("updates")

        anchors {
            right: selection.right
            rightMargin: 11
            verticalCenter: selection.verticalCenter
        }
        MouseArea {
            id: selecttt

            anchors.fill: parent

            onClicked: {
                g3 = 1;
                upddetails.start();
                if (g2 == 1) {
                    battdetails1.start();
                } else if (g1 == 1) {
                    settdetails1.start();
                }
                g2 = 0;
                g1 = 0;
                right4.source = "qrc:/img/arrow-down-sign.png";
                pagesup2.opacity = 0.5;
                right3.source = "qrc:/img/next.png";
                right2.source = "qrc:/img/next.png";
                updatedot.opacity = 0;
            }
        }
    }
    Image {
        id: right4

        scale: 0.2
        source: "qrc:/img/next.png"

        anchors {
            left: updates.left
            leftMargin: -42
            verticalCenter: selection.verticalCenter
        }
    }
    Image {
        id: right1

        scale: 0.2
        source: "qrc:/img/next.png"

        anchors {
            left: info.left
            leftMargin: -42
            verticalCenter: info.verticalCenter
        }
    }
    Image {
        id: pagesup

        opacity: 0
        scale: 0.2
        source: "qrc:/img/double-up-arrow.png"

        anchors {
            right: background.right
            rightMargin: -20
            top: background.bottom
            topMargin: -5
        }
        MouseArea {
            id: pagesupp

            anchors.fill: parent

            onClicked: {
                infodetails1.start();
                settdetails1.start();
                pagesup.opacity = 0;
                g1 = 0;
                g2 = 0;
                g3 = 0;
                right1.source = "qrc:/img/next.png";
                right2.source = "qrc:/img/next.png";
                right3.source = "qrc:/img/next.png";
                right4.source = "qrc:/img/next.png";
            }
        }
    }
    Image {
        id: pagesup1

        opacity: 0
        scale: 0.2
        source: "qrc:/img/double-up-arrow.png"

        anchors {
            right: background1.right
            rightMargin: -20
            top: background1.bottom
            topMargin: -5
        }
        MouseArea {
            id: pagesupp1

            anchors.fill: parent

            onClicked: {
                infodetails1.start();
                battdetails1.start();
                pagesup1.opacity = 0;
                g1 = 0;
                g2 = 0;
                g3 = 0;
                right1.source = "qrc:/img/next.png";
                right2.source = "qrc:/img/next.png";
                right3.source = "qrc:/img/next.png";
                right4.source = "qrc:/img/next.png";
            }
        }
    }
    Image {
        id: pagesup2

        opacity: 0
        scale: 0.2
        source: "qrc:/img/double-up-arrow.png"

        anchors {
            right: background2.right
            rightMargin: -20
            top: background2.bottom
            topMargin: -5
        }
        MouseArea {
            id: pagesupp2

            anchors.fill: parent

            onClicked: {
                infodetails1.start();
                upddetails1.start();
                pagesup2.opacity = 0;
                g1 = 0;
                g2 = 0;
                g3 = 0;
                right1.source = "qrc:/img/next.png";
                right2.source = "qrc:/img/next.png";
                right3.source = "qrc:/img/next.png";
                right4.source = "qrc:/img/next.png";
            }
        }
    }
    //------------------------------------------------//

    //-----------noti dots-----------------------

    Image {
        id: setdot

        //opacity: settingsfault? 1 : 0
        opacity: 0
        scale: 0.5
        source: "qrc:/img/full-stop.png"

        anchors {
            bottom: sett.top
            bottomMargin: -38
            left: sett.right
            leftMargin: -24
        }
    }
    Image {
        id: battdot

        //opacity: settingsfault? 1 : 0
        opacity: 0
        scale: 0.5
        source: "qrc:/img/full-stop.png"

        anchors {
            bottom: batt.top
            bottomMargin: -38
            left: batt.right
            leftMargin: -24
        }
    }
    Image {
        id: updatedot

        //opacity: settingsfault? 1 : 0
        opacity: 0
        scale: 0.5
        source: "qrc:/img/full-stop.png"

        anchors {
            bottom: updates.top
            bottomMargin: -38
            left: updates.right
            leftMargin: -24
        }
    }
    //--------settings specific table layout -------------
    Rectangle {
        id: background

        color: "#06c7f2"
        height: 40
        opacity: 0.5
        width: 480
        y: -1000
    }
    Rectangle {
        id: number

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 30

        anchors {
            left: background.left
            leftMargin: 2
            top: background.top
            topMargin: 2
        }
    }
    Text {
        id: num

        //font.bold: true
        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("NO.")

        anchors {
            fill: number
            left: number.left
            leftMargin: 2
            verticalCenter: number.verticalCenter
        }
    }
    Rectangle {
        id: date

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: number.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }
    }
    Text {
        id: datee

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("date")

        anchors {
            fill: date
            left: date.left
            leftMargin: 2
            verticalCenter: date.verticalCenter
        }
    }
    Rectangle {
        id: time

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: date.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }
    }
    Text {
        id: timee

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("time")

        anchors {
            fill: time
            left: time.left
            leftMargin: 2
            verticalCenter: time.verticalCenter
        }
    }
    Rectangle {
        id: event

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 302

        anchors {
            left: time.right
            leftMargin: 1
            top: background.top
            topMargin: 2
        }
    }
    Text {
        id: eventt

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("event")

        anchors {
            fill: event
            left: event.left
            leftMargin: 2
            verticalCenter: event.verticalCenter
        }
    }
    Rectangle {
        id: nodetails

        color: "#06c7f2"
        opacity: 0.3
        width: number.width

        anchors {
            bottom: background.bottom
            bottomMargin: 2
            left: background.left
            leftMargin: 2
            top: number.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: datedetails

        color: "#06c7f2"
        opacity: 0.3
        width: date.width

        anchors {
            bottom: background.bottom
            bottomMargin: 2
            left: nodetails.right
            leftMargin: 1
            top: number.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: timedetails

        color: "#06c7f2"
        opacity: 0.3
        width: time.width

        anchors {
            bottom: background.bottom
            bottomMargin: 2
            left: datedetails.right
            leftMargin: 1
            top: number.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: eventdetails

        color: "#06c7f2"
        opacity: 0.3
        width: event.width

        anchors {
            bottom: background.bottom
            bottomMargin: 2
            left: timedetails.right
            leftMargin: 1
            top: event.bottom
            topMargin: 1
        }
    }
    //----------------------------------------------------------//

    //-----------battery specific table layout-----
    Rectangle {
        id: background1

        color: "#06c7f2"
        height: 40
        opacity: 0.5
        width: 480
        y: -1000
    }
    Rectangle {
        id: number1

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 30

        anchors {
            left: background1.left
            leftMargin: 2
            top: background1.top
            topMargin: 2
        }
    }
    Text {
        id: num1

        //font.bold: true
        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("NO.")

        anchors {
            fill: number1
            left: number1.left
            leftMargin: 2
            verticalCenter: number1.verticalCenter
        }
    }
    Rectangle {
        id: date1

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: number1.right
            leftMargin: 1
            top: background1.top
            topMargin: 2
        }
    }
    Text {
        id: datee1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("date")

        anchors {
            fill: date1
            left: date1.left
            leftMargin: 2
            verticalCenter: date1.verticalCenter
        }
    }
    Rectangle {
        id: time1

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: date1.right
            leftMargin: 1
            top: background1.top
            topMargin: 2
        }
    }
    Text {
        id: timee1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("time")

        anchors {
            fill: time1
            left: time1.left
            leftMargin: 2
            verticalCenter: time1.verticalCenter
        }
    }
    Rectangle {
        id: event1

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 302

        anchors {
            left: time1.right
            leftMargin: 1
            top: background1.top
            topMargin: 2
        }
    }
    Text {
        id: eventt1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("event")

        anchors {
            fill: event1
            left: event1.left
            leftMargin: 2
            verticalCenter: event1.verticalCenter
        }
    }
    Rectangle {
        id: nodetails1

        color: "#06c7f2"
        opacity: 0.3
        width: number.width

        anchors {
            bottom: background1.bottom
            bottomMargin: 2
            left: background1.left
            leftMargin: 2
            top: number1.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: datedetails1

        color: "#06c7f2"
        opacity: 0.3
        width: date1.width

        anchors {
            bottom: background1.bottom
            bottomMargin: 2
            left: nodetails1.right
            leftMargin: 1
            top: number1.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: timedetails1

        color: "#06c7f2"
        opacity: 0.3
        width: time1.width

        anchors {
            bottom: background1.bottom
            bottomMargin: 2
            left: datedetails1.right
            leftMargin: 1
            top: number1.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: eventdetails1

        color: "#06c7f2"
        opacity: 0.3
        width: event1.width

        anchors {
            bottom: background1.bottom
            bottomMargin: 2
            left: timedetails1.right
            leftMargin: 1
            top: event1.bottom
            topMargin: 1
        }
    }

    //--------------------------------------------------------------//

    //-----------updates specific table layuot-----------
    Rectangle {
        id: background2

        color: "#06c7f2"
        height: 40
        opacity: 0.5
        width: 480
        y: -1000
    }
    Rectangle {
        id: number2

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 30

        anchors {
            left: background2.left
            leftMargin: 2
            top: background2.top
            topMargin: 2
        }
    }
    Text {
        id: num2

        //font.bold: true
        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("NO.")

        anchors {
            fill: number2
            left: number2.left
            leftMargin: 2
            verticalCenter: number2.verticalCenter
        }
    }
    Rectangle {
        id: date2

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: number2.right
            leftMargin: 1
            top: background2.top
            topMargin: 2
        }
    }
    Text {
        id: datee2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("date")

        anchors {
            fill: date2
            left: date2.left
            leftMargin: 2
            verticalCenter: date2.verticalCenter
        }
    }
    Rectangle {
        id: time2

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 70

        anchors {
            left: date2.right
            leftMargin: 1
            top: background2.top
            topMargin: 2
        }
    }
    Text {
        id: timee2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("time")

        anchors {
            fill: time2
            left: time2.left
            leftMargin: 2
            verticalCenter: time2.verticalCenter
        }
    }
    Rectangle {
        id: event2

        color: "#06c7f2"
        height: 20
        opacity: 0.3
        width: 302

        anchors {
            left: time2.right
            leftMargin: 1
            top: background2.top
            topMargin: 2
        }
    }
    Text {
        id: eventt2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 20
        text: qsTr("event")

        anchors {
            fill: event2
            left: event2.left
            leftMargin: 2
            verticalCenter: event2.verticalCenter
        }
    }
    Rectangle {
        id: nodetails2

        color: "#06c7f2"
        opacity: 0.3
        width: number2.width

        anchors {
            bottom: background2.bottom
            bottomMargin: 2
            left: background2.left
            leftMargin: 2
            top: number2.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: datedetails2

        color: "#06c7f2"
        opacity: 0.3
        width: date2.width

        anchors {
            bottom: background2.bottom
            bottomMargin: 2
            left: nodetails2.right
            leftMargin: 1
            top: number2.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: timedetails2

        color: "#06c7f2"
        opacity: 0.3
        width: time2.width

        anchors {
            bottom: background2.bottom
            bottomMargin: 2
            left: datedetails2.right
            leftMargin: 1
            top: number2.bottom
            topMargin: 1
        }
    }
    Rectangle {
        id: eventdetails2

        color: "#06c7f2"
        opacity: 0.3
        width: event2.width

        anchors {
            bottom: background2.bottom
            bottomMargin: 2
            left: timedetails2.right
            leftMargin: 1
            top: event2.bottom
            topMargin: 1
        }
    }

    //---------------------------------------------//

    //--------------battery table contents---------------
    Text {
        id: battNoDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails1.horizontalCenter
            top: nodetails1.top
            topMargin: 3
        }
    }
    Text {
        id: battdateDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails1.horizontalCenter
            top: datedetails1.top
            topMargin: 3
        }
    }
    Text {
        id: batttimeDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails1.horizontalCenter
            top: timedetails1.top
            topMargin: 3
        }
    }
    Text {
        id: batteventDet

        anchors.fill: eventdetails1
        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: eventdetails1.horizontalCenter
            top: eventdetails1.top
            topMargin: 3
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                battdetailsON.start();
                // battdetailsON1.start()
                battmoredetails1.opacity = 1;
                battmoredetails2.opacity = 0;
            }
        }
    }
    Text {
        id: battNoDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails1.horizontalCenter
            top: battNoDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: battdateDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails1.horizontalCenter
            top: battdateDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: batttimeDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails1.horizontalCenter
            top: batttimeDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: batteventDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        //anchors.fill: eventdetails
        anchors {
            horizontalCenter: eventdetails1.horizontalCenter
            //top: batteventDet.bottom
            //topMargin: 3
            left: eventdetails1.left
            verticalCenter: batttimeDet1.verticalCenter
            //             right: eventdetails.right
            //             rightMargin: 0
            //             left: eventdetails.left
            //             leftMargin: 0
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                // battdetailsON.start()
                battdetailsON1.start();
                battmoredetails2.opacity = 1;
                battmoredetails1.opacity = 0;
            }
        }
    }
    //---------------------------------------------------------//

    //---------------settings table content---------------------
    Text {
        id: settNoDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails.horizontalCenter
            top: nodetails.top
            topMargin: 3
        }
    }
    Text {
        id: settdateDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails.horizontalCenter
            top: datedetails.top
            topMargin: 3
        }
    }
    Text {
        id: setttimeDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails.horizontalCenter
            top: timedetails.top
            topMargin: 3
        }
    }
    Text {
        id: setteventDet

        anchors.fill: eventdetails
        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: eventdetails.horizontalCenter
            //right: eventdetails.right
            //rightMargin: 0
            //left: eventdetails.left
            //leftMargin: 0
            top: eventdetails.top
            topMargin: 3
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                settdetailsON1.start();
                settmoredetails1.opacity = 1;
                settmoredetails2.opacity = 0;
                settmoredetails3.opacity = 0;
                settmoredetails4.opacity = 0;
            }
        }
    }
    Text {
        id: settNoDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails.horizontalCenter
            top: settNoDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: settdateDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails.horizontalCenter
            top: settdateDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: setttimeDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails.horizontalCenter
            top: setttimeDet.bottom
            topMargin: 3
        }
    }
    Text {
        id: setteventDet1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        // anchors.fill: eventdetails
        anchors {
            //horizontalCenter: eventdetails.horizontalCenter
            //right: eventdetails.right
            //rightMargin: 0
            left: eventdetails.left
            //leftMargin: 0
            // top:setteventDet.bottom
            // topMargin: 3
            verticalCenter: setttimeDet1.verticalCenter
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                settdetailsON2.start();
                settmoredetails1.opacity = 0;
                settmoredetails2.opacity = 1;
                settmoredetails3.opacity = 0;
                settmoredetails4.opacity = 0;
            }
        }
    }
    Text {
        id: settNoDet2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails.horizontalCenter
            top: settNoDet1.bottom
            topMargin: 3
        }
    }
    Text {
        id: settdateDet2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails.horizontalCenter
            top: settdateDet1.bottom
            topMargin: 3
        }
    }
    Text {
        id: setttimeDet2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails.horizontalCenter
            top: setttimeDet1.bottom
            topMargin: 3
        }
    }
    Text {
        id: setteventDet2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        //anchors.fill: eventdetails
        anchors {
            //right: eventdetails.right
            //rightMargin: 0
            left: eventdetails.left
            //leftMargin: 0
            //top: setteventDet1.bottom
            //  topMargin: 3
            //horizontalCenter: eventdetails.horizontalCenter
            verticalCenter: settNoDet2.verticalCenter
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                settdetailsON3.start();
                settmoredetails1.opacity = 0;
                settmoredetails2.opacity = 0;
                settmoredetails3.opacity = 1;
                settmoredetails4.opacity = 0;
            }
        }
    }
    Text {
        id: settNoDet3

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails.horizontalCenter
            top: settNoDet2.bottom
            topMargin: 3
        }
    }
    Text {
        id: settdateDet3

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails.horizontalCenter
            top: settdateDet2.bottom
            topMargin: 3
        }
    }
    Text {
        id: setttimeDet3

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails.horizontalCenter
            top: setttimeDet2.bottom
            topMargin: 3
        }
    }
    Text {
        id: setteventDet3

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        //anchors.fill: eventdetails
        anchors {
            //right: eventdetails.right
            //rightMargin: 0
            left: eventdetails.left
            //leftMargin: 5
            //top: setteventDet2.bottom
            // topMargin: 3
            // horizontalCenter: eventdetails.horizontalCenter
            verticalCenter: setttimeDet3.verticalCenter
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                settdetailsON4.start();
                settmoredetails1.opacity = 0;
                settmoredetails2.opacity = 0;
                settmoredetails3.opacity = 0;
                settmoredetails4.opacity = 1;
            }
        }
    }
    //------------------------------------------------------------------//

    //---------------update table content---------------------------
    Text {
        id: upNoDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: nodetails2.horizontalCenter
            top: nodetails2.top
            topMargin: 3
        }
    }
    Text {
        id: updateDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: datedetails2.horizontalCenter
            top: datedetails2.top
            topMargin: 3
        }
    }
    Text {
        id: uptimeDet

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: timedetails2.horizontalCenter
            top: timedetails2.top
            topMargin: 3
        }
    }
    Text {
        id: upeventDet

        anchors.fill: eventdetails2
        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        text: ""

        anchors {
            horizontalCenter: eventdetails2.horizontalCenter
            //right: eventdetails.right
            //rightMargin: 0
            //left: eventdetails.left
            //leftMargin: 0
            top: eventdetails2.top
            topMargin: 3
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                updatedetailsON.start();
                updatemoredetails.opacity = 1;
            }
        }
    }
    //---------------------------------------------------------//

    //-----------------more details layout---------------------
    Rectangle {
        id: fdetailsbatt

        color: "#06c7f2"
        height: 0
        opacity: 0.5
        width: 405

        anchors {
            left: background1.right
            leftMargin: 1
            top: background1.top
            topMargin: 0
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                battdetailsOFF.start();
                battdetailsOFF1.start();
                battmoredetails1.opacity = 0;
                battmoredetails2.opacity = 0;
            }
        }
    }
    Rectangle {
        id: fdetails1sett

        color: "#06c7f2"
        height: 0
        opacity: 0.5
        width: 405

        anchors {
            left: background.right
            leftMargin: 1
            top: background.top
            topMargin: 0
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                settdetailsOFF1.start();
                settdetailsOFF2.start();
                settdetailsOFF3.start();
                settdetailsOFF4.start();
                settmoredetails1.opacity = 0;
                settmoredetails2.opacity = 0;
                settmoredetails3.opacity = 0;
                settmoredetails4.opacity = 0;
            }
        }
    }
    Rectangle {
        id: fdetails2up

        color: "#06c7f2"
        height: 0
        opacity: 0.5
        width: 405

        anchors {
            left: background2.right
            leftMargin: 1
            top: background2.top
            topMargin: 0
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                updatedetailsOFF.start();
                updatemoredetails.opacity = 0;
            }
        }
    }
    //---------batterymore----------
    Text {
        id: battmoredetails1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetailsbatt.left
            leftMargin: 2
            //             bottom: fdetails.bottom
            //             bottomMargin: 2
            top: fdetailsbatt.top
            topMargin: 3
        }
    }
    Text {
        id: battmoredetails2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetailsbatt.left
            leftMargin: 2
            top: fdetailsbatt.top
            topMargin: 3
        }
    }
    //------------settingsmore------------
    Text {
        id: settmoredetails1

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetails1sett.left
            leftMargin: 2
            top: fdetails1sett.top
            topMargin: 3
        }
    }
    Text {
        id: settmoredetails2

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetails1sett.left
            leftMargin: 2
            top: fdetails1sett.top
            topMargin: 3
        }
    }
    Text {
        id: settmoredetails3

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetails1sett.left
            leftMargin: 2
            top: fdetails1sett.top
            topMargin: 3
        }
    }
    Text {
        id: settmoredetails4

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetails1sett.left
            leftMargin: 2
            top: fdetails1sett.top
            topMargin: 3
        }
    }
    //-------------updates--------------
    Text {
        id: updatemoredetails

        color: "white"
        font.family: aldo.name
        font.pixelSize: 16
        opacity: 0
        text: qsTr("")

        anchors {
            left: fdetails2up.left
            leftMargin: 2
            top: fdetails2up.top
            topMargin: 3
        }
    }
    //------------more details anim-------//
    //-----------battmoredetails-------//
    ParallelAnimation {
        id: battdetailsON

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetailsbatt
            to: battmoredetails1.height + 3
        }
    }
    ParallelAnimation {
        id: battdetailsOFF

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: battmoredetails1.height + 3
            property: "height"
            target: fdetailsbatt
            to: 0
        }
    }
    ParallelAnimation {
        id: battdetailsON1

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetailsbatt
            to: battmoredetails2.height + 3
        }
    }
    ParallelAnimation {
        id: battdetailsOFF1

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: battmoredetails2.height + 3
            property: "height"
            target: fdetailsbatt
            to: 0
        }
    }
    //-------------settingmoreanim--------
    ParallelAnimation {
        id: settdetailsON1

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetails1sett
            to: settmoredetails1.height + 3
        }
    }
    ParallelAnimation {
        id: settdetailsOFF1

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: settmoredetails1.height + 3
            property: "height"
            target: fdetails1sett
            to: 0
        }
    }
    ParallelAnimation {
        id: settdetailsON2

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetails1sett
            to: settmoredetails2.height + 3
        }
    }
    ParallelAnimation {
        id: settdetailsOFF2

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: settmoredetails2.height + 3
            property: "height"
            target: fdetails1sett
            to: 0
        }
    }
    ParallelAnimation {
        id: settdetailsON3

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetails1sett
            to: settmoredetails3.height + 3
        }
    }
    ParallelAnimation {
        id: settdetailsOFF3

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: settmoredetails3.height + 3
            property: "height"
            target: fdetails1sett
            to: 0
        }
    }
    ParallelAnimation {
        id: settdetailsON4

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetails1sett
            to: settmoredetails4.height + 3
        }
    }
    ParallelAnimation {
        id: settdetailsOFF4

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: settmoredetails4.height + 3
            property: "height"
            target: fdetails1sett
            to: 0
        }
    }
    //----------------updates more--------------

    ParallelAnimation {
        id: updatedetailsON

        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
            from: 0
            property: "height"
            target: fdetails2up
            to: updatemoredetails.height + 3
        }
    }
    ParallelAnimation {
        id: updatedetailsOFF

        NumberAnimation {
            duration: 50
            easing.type: Easing.InOutQuad
            from: updatemoredetails.height + 3
            property: "height"
            target: fdetails2up
            to: 0
        }
    }
    //-------------info animation-------------
    ParallelAnimation {
        id: infodetails

        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
            from: -1000
            property: "y"
            target: selection
            to: 70
        }
    }
    //-----------------settings table animation-----------------
    ParallelAnimation {
        id: settdetails

        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
            from: -1000
            property: "y"
            target: background
            to: 94
        }
    }

    //-------------battery table animation-------------------
    ParallelAnimation {
        id: battdetails

        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
            from: -1000
            property: "y"
            target: background1
            to: 94
        }
    }

    //--------------update table animation---------------------
    ParallelAnimation {
        id: upddetails

        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
            from: -1000
            property: "y"
            target: background2
            to: 94
        }
    }

    //---------------off animations-------------------
    ParallelAnimation {
        id: infodetails1

        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
            from: 70
            property: "y"
            target: selection
            to: -1000
        }
    }
    ParallelAnimation {
        id: settdetails1

        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
            from: 94
            property: "y"
            target: background
            to: -1000
        }
    }
    ParallelAnimation {
        id: battdetails1

        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
            from: 94
            property: "y"
            target: background1
            to: -1000
        }
    }
    ParallelAnimation {
        id: upddetails1

        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
            from: 94
            property: "y"
            target: background2
            to: -1000
        }
    }
}
