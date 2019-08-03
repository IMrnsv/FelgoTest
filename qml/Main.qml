import Felgo 3.0
import QtQuick 2.0

App {
   // property for counting # of clicks
   property int clickCount: 0

   // main content page with a text
   Page {

     // text, anchored to the page center
     AppText {
       text: "You clicked " + clickCount + " times!" // property binding!
       anchors.centerIn: parent
     }

     // handle touch/click on full page
     MouseArea {
       anchors.fill: parent
       onClicked: clickCount = clickCount + 6 // AppText updates automatically
     }
   }
 }

