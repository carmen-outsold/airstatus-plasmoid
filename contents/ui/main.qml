import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0
import org.kde.kirigami 2.20 as Kirigami

import "repr" as Representations

PlasmoidItem {
    id: root

    property int iconSize: Kirigami.Units.iconSizes.huge

    // Mock data
    property var batteryLevels: {
        "left": 85,
        "right": 92,
        "case": 70
    }

    preferredRepresentation: compactRepresentation

    compactRepresentation: Representations.Compact {
        iconSize: root.iconSize
        batteryLevels: root.batteryLevels
    }

    fullRepresentation: Representations.Full {
        batteryLevels: root.batteryLevels
    }
}
