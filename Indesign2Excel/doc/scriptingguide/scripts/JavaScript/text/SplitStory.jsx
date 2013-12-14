//SplitStory.jsx
//An InDesign CS6 JavaScript
//
//Splits the selected story into separate (i.e., unthreaded) text frames.
//To use this script, select a text frame, then run the script.
//
//Note: Any overset text at the end of the story will be deleted.
//Note: Hyphenation points between text frames will not be retained.
//
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
	if(app.documents.length != 0){
		if(app.selection.length != 0){
			//Get the first item in the selection.
			var mySelection = app.selection[0];
			//Process the selection. If text or a text frame is 
			//selected, do something; otherwise, do nothing.
			switch(mySelection.constructor.name){
				case "Text":
				case "InsertionPoint":
				case "Character":
				case "Word":
				case "Line":
				case "TextStyleRange":
				case "Paragraph":
				case "TextColumn":
				case "TextFrame":
					//If the text frame is the only text frame in the story, do nothing.
					if(mySelection.parentStory.textContainers.length != 1){
						//Splitting the story is a two-step process: first, duplicate
						//the text frames, second, delete the original text frames.
						mySplitStory(mySelection.parentStory);
						myRemoveFrames(mySelection.parentStory);
					}
					break;
			}
		}
	}
	//</fragment>
}
function myTeardown(){
}
//<fragment>
function mySplitStory(myStory){
	var myTextFrame;
	//Duplicate each text frame in the story.
	for(var myCounter = myStory.textContainers.length-1; myCounter >= 0; myCounter --){
		myTextFrame = myStory.textContainers[myCounter];
		myTextFrame.duplicate();
	}
}
function myRemoveFrames(myStory){
	//Remove each text frame in the story. Iterate backwards to avoid invalid references.
	for(var myCounter = myStory.textContainers.length-1; myCounter >= 0; myCounter --){
		myStory.textContainers[myCounter].remove();
	}	
}
//</fragment>