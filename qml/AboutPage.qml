import QtQuick 2.9
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import QtQuick.Layouts 1.1

Dialog {
            id: aboutDialog
            visible: false
            title: i18n.tr("About ING BE Mobile "+root.appVersion)
            text: i18n.tr("This is a ING Belgium Bank Webapp for Ubuntu Touch.")

            Image {
                anchors.horizontalCenter: parent     
                source: '../assets/icon.png'
                fillMode: Image.PreserveAspectFit 
            }

            Text {
                wrapMode: Text.WordWrap
                text: i18n.tr('Copyright (c) 2024<br> by Lucstay11  <br><br> E-Mail: <a href=\"mailto://tues.banni@gmail.com\">tues.banni@gmail.com</a>')
            }

            Text {
                wrapMode: Text.WordWrap
                text: i18n.tr('<b>The ING BE Mobile app is not affiliated with ING Bank Belgium. It is just a simple Web App!</b>')
            }

            Button {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                color: UbuntuColors.orange
                text: i18n.tr('Donate')
                onClicked: Qt.openUrlExternally('https://www.paypal.me/TuesBanni')
            }

            Button {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                color: UbuntuColors.green 
                text: i18n.tr('OK')
                onClicked: PopupUtils.close(aboutDialog)
            }
        }
