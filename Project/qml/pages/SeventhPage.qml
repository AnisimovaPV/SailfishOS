import QtQuick 2.0
import Sailfish.Silica 1.0
import  QtQuick.LocalStorage 2.0
Page {
    property var db;
    property int count: 0

    allowedOrientations: Orientation.All
    Item {
        id:base
        function createTable() {
            db.transaction(function(tx) {
                tx.executeSql("CREATE TABLE IF NOT EXISTS tasks (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,"
                    + "name TEXT NOT NULL);");
            });
        }
        Component.onCompleted: {
            db = LocalStorage.openDatabaseSync("tasks", "1.0");
            createTable();
        }
        function dropTable(){
            db.transaction(function(tx) {
                tx.executeSql("DROP TABLE tasks;");
            });
        }
        function insertTask(name) {
            db.transaction(function(tx) {
               tx.executeSql("INSERT INTO tasks (name) VALUES(?);", [name]);
            });
        }
        function deleteTask(id) {
            db.transaction(function(tx) {
                tx.executeSql("DELETE FROM tasks WHERE id = ?;", [id]);
            });
            base.select();
        }
        function retrieveTasks(callback) {
            db.transaction(function(tx) {
                var result = tx.executeSql("SELECT * FROM tasks;");
                callback(result.rows);
            });
        }
        function select() {
                tasksListModel.clear();
                base.retrieveTasks(function(tasks) {
                    for (var i = 0; i < tasks.length; i++) {
                        var tsk = tasks.item(i);
                        console.log( tasks.length+" "+tsk.id+" "+tsk.name)
                        tasksListModel.append({id: tsk.id, name: tsk.name});
                    }
                });
            }
    }
    SilicaListView {
        id:sel
        anchors.fill: parent
        height:parent/2
        model: ListModel {id: tasksListModel }
        delegate: ListItem {
            id: delegate
            Label {
                x:delegate.height+5
                y:Theme.paddingLarge
                text:name
            }
            menu: ContextMenu {
                MenuItem {
                    text: "Удалить задание"
                    onClicked:{ base.deleteTask(id);
                        }
                }
            }
        }
    }
    Column{
        id:col
        property int count: 0

        anchors.bottom:sel.bottom
        TextField {
            id: field
            inputMethodHints: Qt.ImhFormattedNumbersOnly
            width: parent.width
        }
        Button{
            id:button

            text: "Добавить количество воды"

            onClicked:{ if(field.text < 2){

                base.insertTask( field.text+ " л. " + " мало" );}
                else {base.insertTask(  field.text+ " л. " + " норма" );}
           base.select();
            }
        }

    }

    Component.onCompleted:base.select();
    Button {
        id: addButton
        x:450
        y:500
        text: "Назад"
        color: "black"
        backgroundColor: "pink"
        onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))


    }
}
