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
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Руки")}
                Column{
                    anchors.horizontalCenter: parent.horizontalCenter


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



             Column{

                 id: column1
                 anchors.horizontalCenter: parent.horizontalCenter
                 spacing: 100

                 Column{
                     spacing: 30


            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Концентрированные подъёмы\n на бицепс")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }
            Image {
                id: im
                source: "https://cdn.lifehacker.ru/wp-content/uploads/2018/12/DSC_5823_1545279533-630x315.jpg"
                width: 800
                height: 300
            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}
            Label {
                id: label4
                text: count
                y:1100
                x:400
                property int count: 0

                Button {
                    width: 100
                    id: addButton12
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label4.count++

                             }
                Button {
                    width: 100
                    id: addButton78
                    x: -150
                    y:-10
                    text: "-"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label4.count--

                }

            }

             }

                 ////////////////
            Column {
                spacing: 30

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Обратные отжимания на скамье")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }

            Image {
                id: im2
                source: "https://cdn.lifehacker.ru/wp-content/uploads/2018/12/DSC_5693_1545219277-630x315.jpg"
                width: 800
                height: 300
            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}
            Label {
                id: label11
                text: count
                y:1100
                x:400
                property int count: 0

                Button {
                    width: 100
                    id: addButton5
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label11.count++

                             }
                Button {
                    width: 100
                    id: addButton6
                    x: -150
                    y:-10
                    text: "-"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label11.count--

                }

            }
            }

            ////////

            Column {
                spacing: 30

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Разгибание на трицепс с гантелью")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40
            }

            Image {
                id: im4
                source: "https://cdn.lifehacker.ru/wp-content/uploads/2018/12/DSC_5566_1545219127-630x315.jpg"
                width: 600
                height: 300
            }
            Label{ anchors.horizontalCenter: parent.horizontalCenter;text: "Количество подходов"}
            Label {
                id: label2
                text: count
                y:1100
                x:400
                property int count: 0

                Button {
                    width: 100
                    id: addButton1
                    x: 80
                    y:-10
                    text: "+"
                    color: "black"
                    backgroundColor: "lightblue"
                    onClicked: label2.count++

                             }
                Button {
                    width: 100
                    id: addButton10
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
            y:400
            anchors.horizontalCenter: parent.horizontalCenter
            text: label11.count+label4.count+label2.count
            }}

            Button {
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                y:500
                text: "Назад"
                color: "black"
                backgroundColor: "pink"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }


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



