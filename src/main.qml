import QtQuick 2.15
import QtQuick.Window 2.15
// import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

//import QtQuick3D 1.15
//import Qt3D.Core 2.0
//import Qt3D.Render 2.0

Window {
    id: mainWindow

    property bool backlight: false
    property bool batState: true
    property string carMode: "n o r m a l"
    property bool chargingState: true
    property bool door: false
    property bool frontlight: false
    property int heatValue: 50      // from 0 to 100

    property bool lights: false
    property bool lowPower: true
    property bool mode1: false      // to switch modes
    property bool mode2: false
    property bool pageLeft: false
    property bool pageRight: false      // to travel between the page
    property int pages: 0
    property bool seatBelt: true
    property int setPressure: 26            //normal tire pressure

    property bool smallPage: true
    property string smode: "neutral"           //Gears

    property int socValue: 24     // from 0 to 100
    property int sohValue: 99    // from 0 to 100
    property int sotValue: 70     // from 0 to 100

    property int speedValue: 160     // from 0 to 200
    property int tire1: 25
    property int tire2: 26
    property int tire3: 26
    property int tire4: 26
    property int transTime: 500
    property bool turnLeft: true
    property bool turnRight: true    //should be adjusted to Defualt 0 ->false
    property int xDiff: 0
    property int yDiff: 40

    color: "black"
    height: 512
    visible: true
    width: 1920

    Image {
        id: background

        anchors.fill: parent
        source: "qrc:/img/bg.jpg"
    }
    Loader {
        id: mainLoader

        anchors.fill: parent
        source: "MainPage.qml"
    }
    Header {
        pages: pages
    }
    Footer {
        id: footer

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Notification {
    }

    //    Row{
    //        spacing: 50
    //        anchors.horizontalCenter: parent.horizontalCenter
    //        y:150

    //      Button{
    //         id:pageleft
    //         width: 80 ; height: 50

    //         text: "Page Left"
    //         onPressed: smode="parking"
    //         onReleased: smode="neutral"

    //      }

    //      Button{
    //         id:pageright
    //         width: 80 ; height: 50

    //         text: "Page Righ"
    //         onPressed:smode="driving"
    //         onReleased: smode="reverse"

    //      }
    //    }
}
