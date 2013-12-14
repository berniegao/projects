//GetKeyStrings.jsx
//An InDesign CS6 JavaScript
//
//Gets the locale independent strings for a specified string.

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
	var myDialog = app.dialogs.add({name:"Get Key Strings"});
	with(myDialog.dialogColumns.add()){
		with(dialogRows.add()){
			staticTexts.add({staticLabel:"User Interface Name:"});
			var myStringField = textEditboxes.add({editContents:"Convert to Note"});
		}
	}
	var myResult = myDialog.show();
	if(myResult == true){
		var myString = myStringField.editContents;
		myDialog.destroy();
		var myKeyStrings = app.findKeyStrings(myString);
		myString = "";
		if(myKeyStrings.constructor.name == "Array"){
			for(var myCounter = 0; myCounter < myKeyStrings.length; myCounter ++){
				myString += myKeyStrings[myCounter] + "\r";
			}
		}
		else{
			myString = myKeyStrings;
		}
		alert(myString);		
	}
	else{
		myDialog.destroy();
	}
    //</fragment>
}

function myTeardown(){
}

