//GetMenuNames.jsx
//An InDesign CS6 JavaScript
//
//Gets the names of all menus and writes them to a text file.
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
    var myMenu;
    //Open a new text file.
    var myTextFile = File.saveDialog("Save Menu Names As", undefined);
    //If the user clicked the Cancel button, the result is null.
    if(myTextFile != null){
    	//Open the file with write access.
    	myTextFile.open("w");
    	for(var myMenuCounter = 0;myMenuCounter< app.menus.length; myMenuCounter++){
    		myMenu = app.menus.item(myMenuCounter);
    		myTextFile.writeln(myMenu.name);
    		myProcessMenu(myMenu, myTextFile);
    	}
    	myTextFile.close();
    	alert("done!");
    }
    //</fragment>
}
function myTeardown(){
}
//<fragment>
function myProcessMenu(myMenu, myTextFile){
	var myMenuElement;
	var myIndent = myGetIndent(myMenu);
	for(var myCounter = 0; myCounter < myMenu.menuElements.length; myCounter++){
		myMenuElement = myMenu.menuElements.item(myCounter);
		var elementName = myMenuElement.getElements()[0].constructor.name;
		if(elementName != "MenuSeparator"){
			myTextFile.writeln(myIndent + myMenuElement.name);
			if(elementName == "Submenus"){
				if(myMenuElement.menuElements.length > 0){
					myProcessMenu(myMenuElement, myTextFile);
				}
			}
		}
	}
}
function myGetIndent(myObject){
	var myString = "\t";
	var myDone = false;
	do{
		if((myObject.parent.constructor.name == "Menu")||(myObject.parent.constructor.name == "Application")){
			myDone = true;
		}
		else{
			myString = myString + "\t";
			myObject = myObject.parent;
		}
	}while(myDone == false)
	return myString;
}
//</fragment>
