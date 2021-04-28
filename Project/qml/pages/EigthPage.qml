import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    property string str: "https://the-challenger.ru/category/dvizhenie/trenirovki/"

    SilicaWebView {

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }

        id: webView

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: urlField.top
        }
        url: str
    }

    TextField {
        id: urlField
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        inputMethodHints: Qt.ImhUrlCharactersOnly


    }
    Button {
            id: addButton1
            x:400
            y:1150
            text: "Принять"
            color: "white"
            onClicked: {
                str = urlField.text
            }
        }

}
