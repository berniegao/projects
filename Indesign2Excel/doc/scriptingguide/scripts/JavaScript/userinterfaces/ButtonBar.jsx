//ButtonBar.jsx
//An InDesign CS6 JavaScript
//
//Provides a button bar for launching InDesign scripts.
//Demonstrates ScriptUI palette, XML reading/writing, app.doScript() method.
//Or that's the idea right now.
//
//Add the button bar to the application session.

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
	var myButtonBar = myCreateButtonBar();
	myButtonBar.show();
    //</fragment>
}

function myTeardown(){
}

//<fragment>
function myCreateButtonBar(){
	var myButtonName, myButtonFileName, myButtonType, myButtonIconFile, myButton;
	var myButtons = myReadXMLPreferences();
	if(myButtons != ""){
		myButtonBar = new Window('window', 'Script Buttons', undefined, {maximizeButton:false, minimizeButton:false});
		with(myButtonBar){
			spacing = 0;
			margins = [0,0,0,0];
			with(add('group')){
				spacing = 2;
				orientation = 'row';
				for(var myCounter = 0; myCounter < myButtons.length(); myCounter++){
					myButtonName = myButtons[myCounter].xpath("buttonName");
					myButtonType = myButtons[myCounter].xpath("buttonType");
					myButtonFileName = myButtons[myCounter].xpath("buttonFileName");
					myButtonIconFile = myButtons[myCounter].xpath("buttonIconFile");
					if(myButtonType == "text"){
						myButton = add('button', undefined, myButtonName);
					}
					else{
						//myButton = add('iconbutton', undefined, File(myButtonIconFile));
					}
					myButton.scriptFile = myButtonFileName;
					myButton.onClick = function(){
						myButtonFile = File(this.scriptFile)
						app.doScript(myButtonFile);
					}
				}
			}
		}
	}
	return myButtonBar;
}
function myReadXMLPreferences(){
	myXMLFile = File.openDialog("Choose the file containing your button bar defaults");
	var myResult = myXMLFile.open("r", undefined, undefined);
	var myButtons = "";
	if(myResult == true){
		var myXMLDefaults = myXMLFile.read();
		myXMLFile.close();
		var myXMLDefaults = new XML(myXMLDefaults);
		var myButtons = myXMLDefaults.xpath("/buttons/button");
	}
	return myButtons;
}
function myDisplayDialog(myButtonArray){
	var myDialog = app.dialogs.add({name: "Button Bar Builder"});
	with(myDialog.dialogColumns.add()){
	}
	var myResult = myDialog.show();
	if(myResult == true){
	}
	else{
	
	}
}
function myReadDefaults(){
}
function myWriteDefaults(){
}
//</fragment>

