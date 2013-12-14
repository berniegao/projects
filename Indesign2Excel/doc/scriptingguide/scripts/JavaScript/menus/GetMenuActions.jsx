//GetMenuActions.jsx
//An InDesign CS6 JavaScript
//
//Gets the names of all menu actions and writes them to a text file.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

function mySetup(){
}

function mySnippet(){
    var myMenuAction;
    //<fragment>
	var myMenuActionNames = app.menuActions.everyItem().name;
	//Open a new text file.
	var myTextFile = File.saveDialog("Save Menu Action Names As", undefined);
	//If the user clicked the Cancel button, the result is null.
	if(myTextFile != null){
		//Open the file with write access.
		myTextFile.open("w");
		for(var myCounter = 0; myCounter < myMenuActionNames.length; myCounter++){
			myTextFile.writeln(myMenuActionNames[myCounter]);
		}
		myTextFile.close();
	}
	//</fragment>
}

function myTeardown(){
}

