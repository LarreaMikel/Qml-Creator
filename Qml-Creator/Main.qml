import QtQuick 2.4
import Ubuntu.Components 1.3
//import QtQuick.Controls 1.4 //ComboBox
//import QtQuick.Layouts 1.2 //ColumnLayout
import QtSensors 5.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-creator.larreamikel"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Qml-Creator")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        Label {
            id: label
            objectName: "label"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(2)
            }
            text: i18n.tr("Acceleromenter measurements")
        }

        Label {
            id: labelx
            objectName: "label"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: label.bottom
                topMargin: units.gu(2)
            }
            text: i18n.tr("accel X reading:" + Math.round(accel.reading.x * 100)/100 )
        }


        Label {
            id: labely
            objectName: "label"
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: labelx.bottom
                topMargin: units.gu(2)
            }
            text: i18n.tr("accel Y reading:" + Math.round(accel.reading.y * 100)/100 )
        }

        Accelerometer {
               id: accel
               dataRate: 100

               active: true

//               onReadingChanged: {
//                           var newX = (bubble.x + calcRoll(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
//                           var newY = (bubble.y - calcPitch(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
//                           if (isNaN(newX) || isNaN(newY))
//                               return;
//                           if (newX < 0)
//                               newX = 0
//                           if (newX > mainWindow.width - bubble.width)
//                               newX = mainWindow.width - bubble.width
//                           if (newY < 18)
//                               newY = 18
//                           if (newY > mainWindow.height - bubble.height)
//                               newY = mainWindow.height - bubble.height
//                               bubble.x = newX
//                               bubble.y = newY


//                       }


        }

//        TextField {
//            id: textfieldx
//            objectName: "textfieldx"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: label.bottom
//                topMargin: units.gu(2)
//            }
//            width: parent.width

//            placeholderText: "accel X reading:" + accel.reading.x
//        }


//        TextField {
//            id:textfieldy
//            objectName: "textfieldy"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: textfieldx.bottom
//                topMargin: units.gu(2)
//            }
//            width: parent.width

//            placeholderText: "accel Y reading:" + accel.reading.y
//        }

    }
}

