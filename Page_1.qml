import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle
{
    width: 200
    height: 200
    color: "#FF0000"

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 20

        Text {
            id: myText_1
            text: qsTr("This is first page")
            font.pointSize: 20
        }

        Button
        {
            id: myButton_1
            text: "Goto Page 2"
            onClicked:
            {
                myStackView.push("Page_2.qml")
            }
        }

        Button
        {
            id: myButton_2
            text: "Goto Page 3"
            onClicked:
            {
                myStackView.push("Page_2.qml")
                myStackView.push("Page_3.qml")
            }
        }
    }
}
