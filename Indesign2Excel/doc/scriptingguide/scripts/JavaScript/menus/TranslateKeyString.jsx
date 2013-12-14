//TranslateKeyString.jsx
//An InDesign CS6 JavaScript
//
//Converts a key string (locale-independent string) to the corresponding
//string for the current locale of the application.

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
	var myDialog = app.dialogs.add({name:"Translate Key String"});
	with(myDialog.dialogColumns.add()){
		with(dialogRows.add()){
			staticTexts.add({staticLabel:"Key String:"});
			var myStringField = textEditboxes.add({editContents:"$ID/Convert to Note", minWidth:200});
		}
	}
	var myResult = myDialog.show();
	if(myResult == true){
		var myString = myStringField.editContents;
		myDialog.destroy();
		myString = app.translateKeyString(myString);
		if(myString != ""){
			alert(myString);
		}
		else{
			alert("Localized string not found.");
		}
	}
	else{
		myDialog.destroy();
	}
    //</fragment>
}

function myTeardown(){
}

