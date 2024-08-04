import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle
{
    width: 200
    height: 200
    color: "#00FF00"

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 20

        Text {
            id: myText_1
            text: qsTr("This is second page")
            font.pointSize: 20
        }

        Button
        {
            id:myButton_1
            text: "Goto Page 1"
            onClicked:
            {
                myStackView.pop();
            }
        }

        Button
        {
            id:myButton_2
            text: "Goto Page 3"
            onClicked:
            {
                myStackView.push("Page_3.qml");
            }
        }
    }

}
