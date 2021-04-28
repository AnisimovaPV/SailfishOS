import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        contentHeight: column.height
        Column {
            id: column

            width: page.width
            //spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Пресс")

            }

             Column{

                 Timer {
                                 id: timer
                                 property var ticks: 0
                                 interval: 1000
                                 repeat: true
                                 onTriggered: time.text = dispaly_time(++ticks);
                             }

                             Text {
                                 id: time
                                 text: dispaly_time(timer.ticks)
                                 font.pixelSize: 55
                                 anchors.horizontalCenter: parent.horizontalCenter
                                 color: "yellow"
                             }
                             Button {
                                 id: button
                                 anchors.horizontalCenter: parent.horizontalCenter
                                 text: timer.running ? "Остановить" : "Пуск"

                                 onClicked: {
                                     timer.running ? timer.stop() : timer.start();
                                 }
                             }



                 id: column1
                 anchors.horizontalCenter: parent.horizontalCenter
                 spacing: 70

                 Column{
                     spacing: 30


            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Скручивания")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }



            Image {
                id: im
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/1013-800x534.jpg"
                width: 600
                height: 300
            }
            Image {
                id: im1
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/SENY1014-800x534.jpg"
                width: 600
                height: 300

            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}
            Label {
                id: label
                text: count
                y:1100
                x:300
                property int count: 0

                Button {
                    width: 100
                    id: addButton5
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label.count++

                             }
                Button {
                    width: 100
                    id: addButton6
                    x: -150
                    y:-10
                    text: "-"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label.count--

                }

            }
             }

                 ////////////////
            Column {
                spacing: 30

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Боковая планка")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }

            Image {
                id: im2
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/SENY1044-800x534.jpg"
                width: 600
                height: 300
            }
            Image {
                id: im3
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/SENY1043-800x534.jpg"
                width: 600
                height: 300

            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}

            Label {
                id: label1
                text: count
                y:1100
                x:300
                property int count: 0

                Button {
                    width: 100
                    id: addButton7
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label1.count++

                             }
                Button {
                    width: 100
                    id: addButton8
                    x: -150
                    y:-10
                    text: "-"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label1.count--

                }

            }
            }

            ////////

            Column {
                spacing: 30

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Велосипед")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }

            Image {
                id: im4
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/SENY1056-800x534.jpg"
                width: 600
                height: 300
            }
            Image {
                id: im5
                source: "https://the-challenger.ru/wp-content/uploads/2016/01/SENY1054-800x534.jpg"
                width: 600
                height: 300

            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}
            Label {
                id: label2
                text: count
                y:1100
                x:300
                property int count: 0

                Button {
                    width: 100
                    id: addButton11
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label2.count++

                             }
                Button {
                    width: 100
                    id: addButton9
                    x: -150
                    y:-10
                    text: "-"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label2.count--

                }

            }
            }
            Column{
            Label{
            id:label5
            y:100

            color: "yellow"
            anchors.horizontalCenter: parent.horizontalCenter
            text: "\nОБЩЕЕ КОЛИЧЕСТВО ПОДХОДОВ\n"
            }
            Label{
            id:label0
            y:50
            anchors.horizontalCenter: parent.horizontalCenter
            text:  label.count+label1.count+label2.count
            }}

            Button {
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                y:800
                text: "Назад"
                color: "black"
                backgroundColor: "pink"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }


            }


        }
    }

    function dispaly_time(ticks) {
            var H = Math.floor(ticks / 3600);
            var M = Math.floor((ticks % 3600) / 60);
            var S = ticks % 60;

            return pad(H, 2) + ":" + pad(M, 2) + ":" + pad(S, 2);
        }

        function pad(n, width) {
            n = n + "";
            return n.length >= width ? n : new Array(width - n.length + 1).join("0") + n;
}
}
