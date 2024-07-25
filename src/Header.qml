import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: header

    property bool pageLeft: mainWindow.pageLeft
    property bool pageRight: mainWindow.pageRight      // to travel between the page
    property int pages: 0      //indcation to the displayed page
    property int w: 0

    anchors.fill: parent

    onPageLeftChanged: {
        if (pageLeft && !pageRight) {
            if (pages === 0) {
                mainLoader.source = "BatteryPage.qml";
                pages = 3;
                batteryiconn.start();
            } else if (pages === 2) {
                mainLoader.source = "MainPage.qml";
                pages = 0;
                mainPageiconn.start();
            } else if (pages === 1) {
                mainLoader.source = "NavigationPage.qml";
                pages = 2;
                navigationiconn.start();
            } else if (pages === 3) {
                mainLoader.source = "CarPage.qml";
                pages = 1;
                cariconn.start();
            }
        }
    }
    onPageRightChanged: {
        if (pageRight && !pageLeft) {
            if (pages === 0) {
                mainLoader.source = "NavigationPage.qml";
                pages = 2;
                navigationiconn.start();
                console.log("if2");
            } else if (pages === 2) {
                mainLoader.source = "CarPage.qml";
                pages = 1;
                cariconn.start();
            } else if (pages === 1) {
                mainLoader.source = "BatteryPage.qml";
                pages = 3;
                batteryiconn.start();
            } else if (pages === 3) {
                mainLoader.source = "MainPage.qml";
                pages = 0;
                mainPageiconn.start();
            }
        }
    }

    Image {
        id: caricon

        fillMode: Image.PreserveAspectFit
        //x:parent.width/2 + caricon.width/2

        height: pages == 1 ? parent.height / 14 : parent.height / 16
        //width: height
        source: pages == 1 ? "qrc:/img/car-page.on.png" : "qrc:/img/car-page.off.png"
        x: 828

        anchors {
            top: parent.top
            topMargin: 14
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                mainLoader.source = "CarPage.qml";
                pages = 1;
                cariconn.start();
            }
        }
    }
    Image {
        id: navigationicon

        fillMode: Image.PreserveAspectFit
        height: pages == 2 ? parent.height / 20 : parent.height / 25
        source: pages == 2 ? "qrc:/img/navigation-page-on.png" : "qrc:/img/navigation-page-off.png"
        x: 1022

        anchors {
            top: parent.top
            topMargin: 20
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                mainLoader.source = "NavigationPage.qml";
                pages = 2;
                navigationiconn.start();
            }
        }
    }
    Image {
        id: batteryicon

        fillMode: Image.PreserveAspectFit
        height: pages == 3 ? parent.height / 14 : parent.height / 16
        source: pages == 3 ? "qrc:/img/battery-page.on.png" : "qrc:/img/battery-page.off.png"
        x: 895

        anchors {
            top: parent.top
            topMargin: 15
            //         right: mainPageicon.left
            //         rightMargin: 30
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                mainLoader.source = "BatteryPage.qml";
                pages = 3;
                batteryiconn.start();
            }
        }
    }
    Image {
        id: mainPageicon

        fillMode: Image.PreserveAspectFit
        height: pages == 0 ? parent.height / 20 : parent.height / 16
        source: pages == 0 ? "qrc:/img/main-page-on.png" : "qrc:/img/main-page-off.png"
        x: 962

        anchors {
            top: parent.top
            topMargin: pages == 0 ? 20 : 15
        }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                mainLoader.source = "MainPage.qml";
                pages = 0;
                mainPageiconn.start();
            }
        }
    }
    ParallelAnimation {
        id: cariconn

        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: caricon.x
            property: "x"
            target: caricon
            to: 957
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: batteryicon.x
            property: "x"
            target: batteryicon
            to: 1022
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: navigationicon.x
            property: "x"
            target: navigationicon
            to: 895
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: mainPageicon.x
            property: "x"
            target: mainPageicon
            to: 828
        }
    }
    ParallelAnimation {
        id: batteryiconn

        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: batteryicon.x
            property: "x"
            target: batteryicon
            to: 962
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: mainPageicon.x
            property: "x"
            target: mainPageicon
            to: 1022
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: caricon.x
            property: "x"
            target: caricon
            to: 895
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: navigationicon.x
            property: "x"
            target: navigationicon
            to: 833
        }
    }
    ParallelAnimation {
        id: navigationiconn

        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: navigationicon.x
            property: "x"
            target: navigationicon
            to: 962
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: caricon.x
            property: "x"
            target: caricon
            to: 1022
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: mainPageicon.x
            property: "x"
            target: mainPageicon
            to: 895
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: batteryicon.x
            property: "x"
            target: batteryicon
            to: 828
        }
    }
    ParallelAnimation {
        id: mainPageiconn

        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: mainPageicon.x
            property: "x"
            target: mainPageicon
            to: 962
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: batteryicon.x
            property: "x"
            target: batteryicon
            to: 895
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: navigationicon.x
            property: "x"
            target: navigationicon
            to: 1022
        }
        NumberAnimation {
            duration: 500
            easing.type: Easing.InOutQuad
            from: caricon.x
            property: "x"
            target: caricon
            to: 828
        }
    }
}
