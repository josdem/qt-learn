import QtQuick 2.0

Rectangle {
  id: page
  width: 320; height: 480
  color: "white"

  Text {
    id: label
    text: "Apple"
    color: "red"
    y: 30
    anchors.horizontalCenter: page.horizontalCenter
    font.pointSize: 24; font.bold: true
  }

  Image {
    id: image
    y: 80
    anchors.horizontalCenter: page.horizontalCenter
    source: "http://localhost:1313/img/qt/apple.jpg"
  }

  Grid {
    id: colorPicker
    x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
    rows: 2; columns: 3; spacing: 3

    Cell { cellColor: "red"; onClicked: label.color = cellColor, label.text = "Apple", image.source = "http://localhost:1313/img/qt/apple.jpg" }
    Cell { cellColor: "green"; onClicked: label.color = cellColor, label.text = "Lime", image.source = "http://localhost:1313/img/qt/lime.jpg" }
    Cell { cellColor: "blue"; onClicked: label.color = cellColor, label.text = "Sea", image.source = "http://localhost:1313/img/qt/sea.jpg" }
    Cell { cellColor: "yellow"; onClicked: label.color = cellColor, label.text = "Chick", image.source = "http://localhost:1313/img/qt/chick.jpg" }
    Cell { cellColor: "steelblue"; onClicked: label.color = cellColor }
    Cell { cellColor: "black"; onClicked: label.color = cellColor }
  }
}
