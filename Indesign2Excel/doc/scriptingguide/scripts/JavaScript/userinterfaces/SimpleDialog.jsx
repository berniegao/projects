//SimpleDialog.jsx
//An InDesign CS6 JavaScript
//
//Creates a simple dialog box.
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
	var myDialog = app.dialogs.add({name:"Simple Dialog"});
	//Add a dialog column.
	with(myDialog.dialogColumns.add()){
		staticTexts.add({staticLabel:"This is a very simple dialog box."});
	}
	//Show the dialog box.
	var myResult = myDialog.show();
	//If the user clicked OK, display one message;
	//if they clicked Cancel, display a different message.
	if(myResult == true){
		alert("You clicked the OK button.");
	}
	else{
		alert("You clicked the Cancel button.");
	}
	//Remove the dialog box from memory.
	myDialog.destroy();
    //</fragment>
}
function myTeardown(){
}