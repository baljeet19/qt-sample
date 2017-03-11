import QtQuick 2.6
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.0

Rectangle {
    id: rectangle
    property alias mouseArea: mouseArea

    //  property alias textEdit: textEdit
    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Rectangle {
        id: rectangleHeader
        height: 50
        color: "#111bc0"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        Rectangle {
            color: "red"
            anchors.left: parent.left
            anchors.leftMargin: 0
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
        }

        Rectangle {
            color: "green"
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            color: "blue"
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
        }
    }
    Rectangle {
        id: rectangleContent
        color: "#33000000"
        anchors.top: rectangleHeader.bottom
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: rectangleFooter.top

        Text {
            id: text1
            text: qsTr("main content area")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 12
        }
    }
    Rectangle {
        id: rectangleFooter
        height: 50
        color: "#929292"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        Rectangle {
            color: "red"
            anchors.left: parent.left
            anchors.leftMargin: 0
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: "OPERATOR"
            }
        }
        Rectangle {
            id: footerCenter
            color: "green"
            width: 25
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                id: textFooterCenter
                text: "TestsSet#5"
            }
            MouseArea {
                anchors.fill: parent
                //                onClicked: {
                //                    textFooterCenter.text=textFooterCenter.width
                //                }
            }
        }
        Rectangle {
            id: rectangle1
            color: "blue"
            width: 250
            anchors.verticalCenter: parent.top
            anchors.right: parent.right
            RowLayout {
                anchors.right: parent.right
                anchors.rightMargin: 0

                Item {
                    width: 40
                    height: 50

                    Image {
                        id: imageDirect
                        width: 30
                        height: 30
                        source: "http://www.hlgjyl888.com/data/wallpapers/57/WDF_1035782.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: textDirect
                        anchors.top: imageDirect.bottom
                        text: "Direct"
                    }

                    MouseArea {
                        anchors.fill: parent
                        //                        onClicked:
                        //                        {
                        ////qDebug << "clicked";
                        //                        }
                    }
                }
                Item {
                    width: 40
                    height: 50

                    Image {
                        id: imageBattery
                        width: 30
                        height: 30
                        source: "http://www.hlgjyl888.com/data/wallpapers/57/WDF_1035782.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: textBattery
                        anchors.top: imageBattery.bottom
                        text: "Battery"
                    }

                    MouseArea {
                        anchors.fill: parent
                        //onClicked:
                        //{
                        //qDebug << "clicked";
                        //}
                    }
                }
                Rectangle {
                    width: 40
                    height: 50
                    id: flashingblob
                    Image {
                        id: imageWiFi
                        width: 30
                        height: 30
                        source: "http://www.hlgjyl888.com/data/wallpapers/57/WDF_1035782.png"
                        fillMode: Image.PreserveAspectFit
                        //opacity: parent.pressed ? 0.5 : .3
                    }

                    Text {
                        id: textWiFi
                        anchors.top: imageWiFi.bottom
                        text: "WiFi"
                    }

                    //NumberAnimation{
                    //    id: animateOpacity
                    //    target: textWiFi
                    //    properties: "opacity"
                    //    from: 0.99
                    //    to: 1.0
                    //    loops: Animation.Infinite
                    //    easing {type: Easing.OutBack; overshoot: 500}
                    //}
                    MouseArea {
                        anchors.fill: parent
                        //onClicked: {
                        //    animateOpacity.start()
                        //}
                    }
                }
            }
        }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: rectangle
                opacity: 0.3
            }
        },
        State {
            name: "State2"

            PropertyChanges {
                target: rectangle
                opacity: 0.6
            }
        }
    ]

}
