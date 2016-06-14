import QtQuick 2.0
import QtMultimedia 5.6


Rectangle {
  id: page
  width: 320; height: 480
  color: "white"

  property var imageUrl : "http://localhost:1313/img/qt/"
  property var audioUrl : "http://localhost:1313/sounds/qt/"

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
    source: imageUrl + "apple.jpg"
  }

  Audio {
    id: audio
    source: audioUrl + "red.wav"
  }

  Grid {
    id: colorPicker
    anchors.horizontalCenter: page.horizontalCenter
    anchors.bottom: page.bottom; anchors.bottomMargin: 4
    rows: 2; columns: 3; spacing: 3

    Cell {
      cellColor: "red";
      onClicked: label.color = cellColor,
      label.text = "Red",
      image.source = imageUrl + "apple.jpg",
      audio.source = audioUrl + "red.wav",
      audio.play()
    }
    Cell {
      cellColor: "green";
      onClicked: label.color = cellColor,
      label.text = "Green",
      image.source = imageUrl + "lime.jpg",
      audio.source = audioUrl + "green.wav",
      audio.play()
    }
    Cell {
      cellColor: "blue";
      onClicked: label.color = cellColor,
      label.text = "Blue",
      image.source = imageUrl + "sea.jpg",
      audio.source = audioUrl + "blue.wav",
      audio.play()
    }
    Cell {
      cellColor: "yellow";
      onClicked: label.color = cellColor,
      label.text = "Yellow",
      image.source = imageUrl + "chick.jpg",
      audio.source = audioUrl + "yellow.wav",
      audio.play()
    }
    Cell {
      cellColor: "orange";
      onClicked: label.color = cellColor,
      label.text = "Orange",
      image.source = imageUrl + "orange.jpg",
      audio.source = audioUrl + "orange.wav",
      audio.play()
    }
    Cell {
      cellColor: "brown";
      onClicked: label.color = cellColor,
      label.text = "Brown",
      image.source = imageUrl + "brown.jpg",
      audio.source = audioUrl + "brown.wav",
      audio.play()
    }
  }
}
