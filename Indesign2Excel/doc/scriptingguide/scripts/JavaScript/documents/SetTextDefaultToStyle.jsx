//SetTextDefaultToStyle.jsx
//An InDesign CS6 JavaScript
//
main();
function main(){
	mySetup();
	mySnippet();
	myTeardown();
}
function mySetup(){
	var myDocument = app.documents.add();
	var myParagraphStyle = myDocument.paragraphStyles.item("BodyText");
	//If the paragraph style does not exist, trying to
	//get its name will cause an error.
	try{
		myParagraphStyle.name;
	}
	catch(myError){
		//The paragraph style did not exist, so create it.
		myDocument.paragraphStyles.add({name:"BodyText"});
	}
}
function mySnippet(){
	//<fragment>
	var myDocument = app.documents.item(0);
	myDocument.textDefaults.appliedParagraphStyle = myDocument.paragraphStyles.item("BodyText");
	//</fragment>
}
function myTeardown(){
}