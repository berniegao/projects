//TextSelection.jsx
//An InDesign CS6 JavaScript
//
//Shows how to determine whether the current selection is a text selection.
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
	if (app.documents.length != 0){
		//If the selection contains more than one item, the selection
		//is not text selected with the Type tool.
		if (app.selection.length == 1){
			//Evaluate the selection based on its type.
			switch (app.selection[0].constructor.name){
				case "InsertionPoint":
				case "Character":
				case "Word":
				case "TextStyleRange":
				case "Line":
				case "Paragraph":
				case "TextColumn":
				case "Text":
				case "Story":
					//The object is a text object; pass it on to a function.
					myProcessText(app.selection[0]);
				break;
				//In addition to checking for the above text objects, we can
				//also continue if the selection is a text frame selected with
				//the Selection tool or the Direct Selection tool.
				case "TextFrame":
					//If the selection is a text frame, get a reference to the
					//text in the text frame.
					myProcessText(app.selection[0].texts.item(0));
					break;
				default:
					alert("The selected object is not a text object. Select some text and try again.");
					break;
			}
		}
		else{
			alert("Please select some text and try again.");
		}
	}
	//</fragment>
}
function myTeardown(){
}
function myProcessText(myTextObject){
	//Do something with the text object.
}