//BreakFrame.jsx
//An InDesign CS6 JavaScript
//
//Removes the selected text frame (or text frames) from the
//story containing the text frame and removes the text contained
//by the text frame from the story.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
}
function mySnippet(){
    //<fragment>
    var myObjectList = new Array;
    //Script does nothing if no documents are open or if no objects are selected.
    if(app.documents.length != 0){
    	if(app.selection.length != 0){
    		//Process the objects in the selection to create a list of
    		//qualifying objects (text frames).
    		for(myCounter = 0; myCounter < app.selection.length; myCounter ++){
    			switch(app.selection[myCounter].constructor.name){
    				case "TextFrame":
    					myObjectList.push(app.selection[myCounter]);
    					break;
    				default:
    					if(app.selection.length == 1){
    						//If text is selected, then get the parent text frame.
    						switch(app.selection[myCounter].constructor.name){
    							case "Text":
    							case "InsertionPoint":
    							case "Character":
    							case "Word":
    							case "Line":
    							case "TextStyleRange":
    							case "Paragraph":
    							case "TextColumn":
    								myObjectList.push(app.selection[myCounter].parentTextFrames[0]);
    								break;
								}
    					}
    					break;
    			}
    		}
    		//If the object list is not empty, pass it on to the function
    		//that does the real work.
    		if(myObjectList.length != 0){
    			myBreakFrames(myObjectList);
    		}
    	}
    }
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myBreakFrames(myObjectList){
	myObjectList.sort(myReverseSortByTextFrameIndex);
	for(var myCounter = 0; myCounter < myObjectList.length; myCounter ++){
		myBreakFrame(myObjectList[myCounter]);
	}
}
function myBreakFrame(myTextFrame){
	if((myTextFrame.nextTextFrame != null)&&(myTextFrame.previousTextFrame != null)){
		var myNewFrame = myTextFrame.duplicate();
		if(myTextFrame.contents != ""){
			myTextFrame.texts.item(0).remove();
		}
		myTextFrame.remove();
	}
}
function myReverseSortByTextFrameIndex(a,b){
	//By combining the story id with the text frame index, we can sort the text frames
	//into the right (reverse) order in a single pass.
	$.write("padded a: " + myPadString(a.id, 8)+myPadString(a.textFrameIndex, 8));
	$.write("padded b: " + myPadString(b.id, 8)+myPadString(b.textFrameIndex, 8));
	if((myPadString(a.id, 8)+myPadString(a.textFrameIndex, 8)) > (myPadString(b.id, 8)+myPadString(b.textFrameIndex, 8))){
		return -1;
	}
	if((myPadString(a.id,8)+myPadString(a.textFrameIndex,8)) < (myPadString(b.id,8)+myPadString(b.textFrameIndex,8))){
		return 1;
	}
	return 0;
}
function myPadString(myString, myLength) {
  var myTempString = "";
  var myNewLength = myLength-String(myString).length;
  for (var myCounter = 0; myCounter<myNewLength; myCounter++) {
    myTempString += "0";
  }
  return myTempString + myString;
}
//</fragment>

