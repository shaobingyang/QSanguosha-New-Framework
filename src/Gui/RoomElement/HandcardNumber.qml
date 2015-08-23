import QtQuick 2.4
import Cardirector.Device 1.0

Image {
    property string kingdom
    property int value

    source: "image://root/roomscene/handcard/" + (kingdom != "" ? kingdom : "qun")

    GlowText {
        id: handcardNumText
        anchors.fill: parent
        color: "white"
        text: value
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        glow.spread: 0.7
        glow.radius: Device.gu(4.0)
        glow.samples: 4
        glow.color: "#000"
    }
}
