import QtQuick 2.0

Rectangle {
  id: page
  width: 320; height: 480
  color: "white"

  Text {
    id: label
    text: "Red"
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
    anchors.horizontalCenter: page.horizontalCenter
    anchors.bottom: page.bottom; anchors.bottomMargin: 4
    rows: 2; columns: 3; spacing: 3

    Cell { cellColor: "red"; onClicked: label.color = cellColor, label.text = "Red", image.source = "http://localhost:1313/img/qt/apple.jpg" }
    Cell { cellColor: "green"; onClicked: label.color = cellColor, label.text = "Green", image.source = "http://localhost:1313/img/qt/lime.jpg" }
    Cell { cellColor: "blue"; onClicked: label.color = cellColor, label.text = "Blue", image.source = "http://localhost:1313/img/qt/sea.jpg" }
    Cell { cellColor: "yellow"; onClicked: label.color = cellColor, label.text = "Yellow", image.source = "http://localhost:1313/img/qt/chick.jpg" }
    Cell { cellColor: "orange"; onClicked: label.color = cellColor, label.text = "Orange", image.source = "http://localhost:1313/img/qt/orange.jpg" }
    Cell { cellColor: "brown"; onClicked: label.color = cellColor, label.text = "Brown", image.source = "http://localhost:1313/img/qt/brown.jpg"}
  }
}
