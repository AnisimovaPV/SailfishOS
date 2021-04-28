import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Главная")

            }
             Column{

                 id: column1
                 anchors.horizontalCenter: parent.horizontalCenter
                 spacing: 45

                 Button {
                     width: 500
                     id: addButton
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:500
                     text: "Пресс"
                     color: "black"
                     backgroundColor: "red"
                     onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
                 }

                 Button {
                     width: 500

                     id: addButton1
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:500
                     text: "Руки"
                     color: "black"
                     backgroundColor: "orange"
                     onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
                 }

                 Button {
                     width: 500

                     id: addButton2
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:500
                     text: "Ноги"
                     color: "black"
                     backgroundColor: "yellow"
                     onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
                 }

                 Button {
                     width: 500

                     id: addButton3
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:500
                     text: "План тренировок"
                     color: "black"
                     backgroundColor: "lightgreen"
                     onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
                 }
                 Button {
                     width: 500

                     id: addButton4
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:500
                     text: "Количество выпитой воды"
                     color: "black"
                     backgroundColor: "lightblue"
                     onClicked: pageStack.push(Qt.resolvedUrl("SeventhPage.qml"))
                 }

                 Button {
                     width: 500

                     id: addButton5
                     anchors.horizontalCenter: parent.horizontalCenter
                     y:1500
                     text: "Поиск в Интернете"
                     color: "black"
                     backgroundColor: "purple"
                     onClicked: pageStack.push(Qt.resolvedUrl("EigthPage.qml"))
                 }
                 Label{
                     font.pixelSize: 30
                     anchors.horizontalCenter: parent.horizontalCenter
                     text: "Ещё больше тренировок в интернете"
                 }
            }
        }
    }
}
