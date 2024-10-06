import QtQuick 2.15
import QtQuick.Layouts 1.15
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents
import org.kde.kirigami 2.20 as Kirigami




Item {
    id: repr_full

    property var batteryLevels: {
        "left": 0,
        "right": 0,
        "case": 0
    }

    Layout.preferredWidth: Kirigami.Units.gridUnit * 20
    Layout.preferredHeight: Kirigami.Units.gridUnit * 15

    ColumnLayout {
        anchors.fill: parent
        spacing: Kirigami.Units.smallSpacing

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: Kirigami.Units.largeSpacing

            Repeater {
                model: [
                    {name: "Left Pod", icon: "audio-headset", level: batteryLevels.left},
                    {name: "Case", icon: "audio-headphones", level: batteryLevels.case},
                    {name: "Right Pod", icon: "audio-headset", level: batteryLevels.right}
                ]

                delegate: ColumnLayout {
                    Kirigami.Icon {
                        Layout.alignment: Qt.AlignHCenter
                        source: modelData.icon
                        width: Kirigami.Units.iconSizes.huge
                        height: Kirigami.Units.iconSizes.huge
                    }

                    PlasmaComponents.Label {
                        Layout.alignment: Qt.AlignHCenter
                        text: modelData.name
                    }

                    PlasmaComponents.Label {
                        Layout.alignment: Qt.AlignHCenter
                        text: modelData.level + "%"
                        font.bold: true
                    }
                }
            }
        }
    }
}
