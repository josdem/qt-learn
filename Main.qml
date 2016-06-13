import QtQuick 2.0

Rectangle {
  id: page
  width: 320; height: 480
  color: "white"

  Text {
    id: label
    text: "Apple"
    y: 30
    anchors.horizontalCenter: page.horizontalCenter
    font.pointSize: 24; font.bold: true
  }

  Image {
    id: image
    y: 80
    anchors.horizontalCenter: page.horizontalCenter
    source: "http://josdem.io/img/qt/apple.jpg"
  }

  Grid {
    id: colorPicker
    x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
    rows: 2; columns: 3; spacing: 3

    Cell { cellColor: "red"; onClicked: label.color = cellColor }
    Cell { cellColor: "green"; onClicked: label.color = cellColor }
    Cell { cellColor: "blue"; onClicked: label.color = cellColor }
    Cell { cellColor: "yellow"; onClicked: label.color = cellColor }
    Cell { cellColor: "steelblue"; onClicked: label.color = cellColor }
    Cell { cellColor: "black"; onClicked: label.color = cellColor }
  }
}
