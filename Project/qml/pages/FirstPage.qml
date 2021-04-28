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
                //title: qsTr("Пресс")

            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                //width: page.width

                text: qsTr("      Добро пожаловать в мир\n              красивого тела!!!\n"+
                           "Я уверена, что уже черз 3 недели\n               вы не узнаете себя")
                color: Theme.secondaryHighlightColor
                font.pixelSize: 40

            Button {
                id: addButton
                anchors.horizontalCenter: parent.horizontalCenter
                y:500
                text: "Начать тренировку"
                color: "black"
                backgroundColor: "pink"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }


            }

        }
    }
}
