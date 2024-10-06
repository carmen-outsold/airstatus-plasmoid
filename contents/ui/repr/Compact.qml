import QtQuick 2.15
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents


Item {
    id: repr_compact
    property int iconSize: 0

    property var batteryLevels: {
        "left": 0,
        "right": 0,
        "case": 0
    }

    PlasmaComponents.ToolButton {
        anchors.fill: parent
        icon.name: "audio-headphones"
        icon.width: iconSize
        icon.height: iconSize
        display: PlasmaComponents.AbstractButton.IconOnly
        onClicked: {
            console.log("Button clicked, expanding plasmoid")
            plasmoid.expanded = !plasmoid.expanded
        }
        z: 1
    }

    PlasmaCore.ToolTipArea {
        anchors.fill: parent
        mainText: i18n("AirPods Battery Status")
        subText: i18n("L: %1% | R: %2% | C: %3%", batteryLevels.left, batteryLevels.right, batteryLevels.case)
        active: true
        interactive: false
        z: 0
    }
}
