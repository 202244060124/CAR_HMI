import QtQuick 2.15

Item {
    id: mainBattery

    property bool soVisiblity: true  //to make it invisible in battery Page

    property int socValue: 75      // from 0 to 100
    property int sohValue: 100      // from 0 to 100
    property int sotValue: 100      // from 0 to 100

    height: 220
    width: 220

    onSocValueChanged: {
        if (socValue <= 20) {
            socIcon.source = "qrc:/img/low-battery-level.png";
            socIcon.scale = 3.5;
        } else if (socValue <= 25) {
            socIcon.source = "qrc:/img/lowbatterylevel.png";
            socIcon.scale = 3.5;
        } else if (socValue <= 80) {
            socIcon.source = "qrc:/img/battery_soc2.png";
            socIcon.scale = 1.6;
        } else if (socValue > 80) {
            socIcon.source = "qrc:/img/fullbattery.png";
            socIcon.scale = 3.5;
        }
    }

    //anchors.fill: parent

    Image {
        id: circle

        fillMode: Image.PreserveAspectFit
        source: "qrc:/img/gauge_circle.png"

        Image {
            id: dashes

            source: "qrc:/img/gauge_dashs.png"
        }
        Gauge_main {
            id: batterySoc

            function mapper() {
                return (socValue - 0) / (100 - 0) * (end - start);
            }

            anchors.centerIn: parent
            end: 315
            size: 900
            socValue: mainBattery.socValue
            // value: mapper()
            start: 180

            Image {
                id: socIcon

                anchors.centerIn: parent
                scale: 1.5
                source: "qrc:/img/battery_soc2.png"
            }
        }
        Gauge {
            id: batterySoh

            anchors.centerIn: parent
            end: 45
            lineWidth: 15
            percentage: ""
            primaryColor: "#05f228"
            size: 700
            socValue: sohValue
            start: 0
            visible: soVisiblity      //to make it invisible in battery Page

            Image {
                id: sohIcon

                source: "qrc:/img/battery_soh.png"

                anchors {
                    bottom: parent.bottom
                    bottomMargin: 180
                    left: parent.right
                    leftMargin: -10
                }
            }
        }
        Gauge {
            id: batterySot

            anchors.centerIn: parent
            end: 135
            lineWidth: 15
            percentage: ""
            primaryColor: "#f2916e"
            size: 700
            socValue: mainBattery.sotValue
            start: 90
            visible: soVisiblity      //to make it invisible in battery Page

            Image {
                id: sotIcon

                source: "qrc:/img/battery_temperature.png"

                anchors {
                    left: parent.left
                    leftMargin: 180
                    top: parent.bottom
                    topMargin: -20
                }
            }
        }
    }
}
