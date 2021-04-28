import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page4
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
        }
        Column {
            anchors.fill: parent;
            id: column;
            width: parent.width;
            spacing: Theme.paddingMedium;

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Понедельник"
                menu: ContextMenu {
                    id: menu
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Вторник"
                menu: ContextMenu {
                    id: menu1
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }
            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Среда"
                menu: ContextMenu {
                    id: menu3
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Четверг"
                menu: ContextMenu {
                    id: menu4
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Пятница"
                menu: ContextMenu {
                    id: menu6
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }
            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Суббота"
                menu: ContextMenu {
                    id: menu5
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }
            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;

                label: "Воскресенье"
                menu: ContextMenu {
                    id: menu8
                    MenuItem { text: "Пресс" }
                    MenuItem { text: "Руки" }
                    MenuItem { text: "Ноги" }
                    MenuItem { text: "Выходной" }

                   }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
             }


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

