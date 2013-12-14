//ProcessType.jsx
//An InDesign CS6 JavaScript
//
//Provides an example fragment for the XMLRulesLayout script.

//<fragment>
function ProcessDevice(){
    this.name = "ProcessDevice";
    this.xpath = "/devices/device";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            insertTextAsContent("\r", XMLElementPosition.afterElement);
            if(myDocument.pages.item(0).textFrames.length == 0){
                myPage = myDocument.pages.item(0);
            }
            else{
                myPage = myDocument.pages.add();
            }
            var myBounds = myGetBounds(myDocument, myPage);
            var myTextFrame = placeIntoFrame(myPage, myBounds);
            myTextFrame.textFramePreferences.firstBaselineOffset = FirstBaseline.leadingOffset;
        }
        return true;
    }
}
//</fragment>
