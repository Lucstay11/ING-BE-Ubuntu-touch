import QtQuick 2.9
import Qt.labs.settings 1.0

Item{
    id: settingsComponent
    
    //Settings page
    property alias zoomFactor: settings.zoomFactor
    property alias argentaZoomFactor: settings.argentaZoomFactor
    property alias selectedIndex: settings.selectedIndex
    property alias selectedLanguageIndex: settings.selectedLanguageIndex
    property alias selectedLanguage: settings.selectedLanguage
    
    //User data
    property alias firstRun: settings.firstRun
    
    Settings {
        id: settings
    
        //Settings page
        property real zoomFactor: 1.75
        property real argentaZoomFactor: 1.75
        property real selectedIndex: 1
        property real selectedLanguageIndex: 0
        property string selectedLanguage: "nl"
        
        //User data
        property bool firstRun: true
    }
}
