import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0

import "repr" as Representations

PlasmoidItem {
    id: root


    // Mock data
    property var batteryLevels: {
        "left": 85,
        "right": 92,
        "case": 70
    }

    preferredRepresentation: compactRepresentation

    compactRepresentation: Representations.Compact {
        batteryLevels: root.batteryLevels
    }

    fullRepresentation: Representations.Full {
        batteryLevels: root.batteryLevels
    }
}
