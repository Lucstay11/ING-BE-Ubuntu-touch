import QtQuick 2.9
import Morph.Web 0.1
import QtWebEngine 1.7
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.2
import "actions" as Actions
import "components"
import "."

MainView {
    id: root
    objectName: "mainView"
    theme.name: "Ubuntu.Components.Themes.Ambiance"

    anchors {
        fill: parent
    }
    
    Component.onCompleted: {
        webview.zoomFactor = appSettings.argentaZoomFactor
    }    

    applicationName: "ing.belgium.bank"
    automaticOrientation: true
    anchorToKeyboard: true
    focus: true
    property bool blockOpenExternalUrls: false
    property bool runningLocalApplication: false
    property bool openExternalUrlInOverlay: true
    property bool popupBlockerEnabled: true
    
    property string appVersion : "v1.0"  

    property string myUA: "Mozilla/5.0 (iPhone; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.25 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1"

  Page {
    header: PageHeader {
        id: header
        title: i18n.tr("ING BE Mobile")

        trailingActionBar.actions: [
            Action {
                iconName: 'go-next'
                text: i18n.tr('Forward')
                onTriggered: webview.goForward()
            },
   
            Action {
                iconName: 'go-previous'
                text: i18n.tr('Back')
                onTriggered: webview.goBack()
            },

           Action {
                iconName: 'reload'
                text: i18n.tr('Reload')
                onTriggered: webview.reload()
            },

            Action {
                iconName: 'settings'
                text: i18n.tr('Settings')
                onTriggered: PopupUtils.open(Qt.resolvedUrl('SettingsPage.qml'))
            },

            Action {
                iconName: 'info'
                text: i18n.tr('About')
                onTriggered: PopupUtils.open(Qt.resolvedUrl('AboutPage.qml'))
            }
         ]
    }


        WebEngineView {
            id: webview

            WebEngineProfile {
            id: webContext

            property alias userAgent: webContext.httpUserAgent
            property alias dataPath: webContext.persistentStoragePath

            dataPath: dataLocation

            userAgent: myUA

            persistentCookiesPolicy: WebEngineProfile.ForcePersistentCookies

            }

                anchors {
                       top: header.bottom
                       left: parent.left
                       right: parent.right
                       bottom: parent.bottom
            }

                zoomFactor: 2.20
                url: "https://ebanking.ing.be/login/"

            onFileDialogRequested: function(request) {

            switch (request.mode)
        {
            case FileDialogRequest.FileModeOpen:
                request.accepted = true;
                var fileDialogSingle = PopupUtils.open(Qt.resolvedUrl("ContentPickerDialog.qml"));
                fileDialogSingle.allowMultipleFiles = false;
                fileDialogSingle.accept.connect(request.dialogAccept);
                fileDialogSingle.reject.connect(request.dialogReject);
                break;

            case FileDialogRequest.FileModeOpenMultiple:
                request.accepted = true;
                var fileDialogMultiple = PopupUtils.open(Qt.resolvedUrl("ContentPickerDialog.qml"));
                fileDialogMultiple.allowMultipleFiles = true;
                fileDialogMultiple.accept.connect(request.dialogAccept);
                fileDialogMultiple.reject.connect(request.dialogReject);
                break;

            case FilealogRequest.FileModeUploadFolder:
            case FileDialogRequest.FileModeSave:
                request.accepted = false;
                break;
            }

        }

        onNewViewRequested: function(request) {
                Qt.openUrlExternally(request.requestedUrl);
            }

        Loader {
            anchors {
                fill: popupWebview
            }
            active: webProcessMonitor.crashed || (webProcessMonitor.killed && !popupWebview.currentWebview.loading)
            sourceComponent: SadPage {
                webview: popupWebview
                objectName: "overlaySadPage"
            }
            WebProcessMonitor {
                id: webProcessMonitor
                webview: popupWebview
            }
            asynchronous: true
          }
       }
       
            SettingsComponent{
                id: appSettings
            }       

            Loader {
                id: contentHandlerLoader
                source: "ContentHandler.qml"
                asynchronous: true
            }
         
            Loader {
                id: downloadLoader
                source: "Downloader.qml"
                asynchronous: true
            }
            
            Loader {
                id: filePickerLoader
                source: "ContentPickerDialog.qml"
                asynchronous: true
            }

            Loader {
                id: downloadDialogLoader
                source: "ContentDownloadDialog.qml"
                asynchronous: true
            }
         }
      }
