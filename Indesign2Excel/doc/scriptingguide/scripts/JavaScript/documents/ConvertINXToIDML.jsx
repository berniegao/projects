//ConvertINXToIDML.jsx
//An InDesign CS6 JavaScript
//
//Converts INX files to IDML by opening and re-epxorting the documents.
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
	var myDocument;
	var myFilteredFiles = new Array;
	var myConvertRange = myConvertDialog();
	switch(myConvertRange){
		case 0:
			//User selected single file.
			if(File.fs != "Macintosh"){
				var myFileName = File.openDialog("Select an INX file to convert", "INX files: *.inx", true);
			}
			else{
				var myFileName = File.openDialog("Select an INX file to convert", myFileFilter, true);				
			}
			if(myFileName != null){
				myFilteredFiles.push(myFileName);
			}
			break;
		case 1:
			//User selected folder.
			var myFolder = Folder.selectDialog("Select the folder containing the INX files to convert");
			//Get the path to the folder containing the files you want to place. 
			if(myFolder != null){ 
				if(File.fs == "Macintosh"){
					myFilteredFiles = myMacOSFileFilter(myFolder);
				}
				else{
					myFilteredFiles = myWinOSFileFilter(myFolder);
				}
			}
			break;
		case 3:
			//User clicked Cancel.
			break;
	}
	if(myFilteredFiles.length != 0){
		var myRegExp = /\.inx/gi
		for(var myCounter = 0; myCounter < myFilteredFiles.length; myCounter++){
			//myDocument = app.open(File(myFilteredFiles[myCounter]));
			myDocument = app.open(File(myFilteredFiles[myCounter]));
			myIDMLFileName = myFilteredFiles[myCounter].toString().replace(myRegExp, ".idml");
			myDocument.exportFile(ExportFormat.indesignMarkup, File(myIDMLFileName));
			myDocument.close(SaveOptions.no);
		}
		
	}
	function myConvertDialog(){
		var myConvertRange;
		var myDialog = app.dialogs.add({name:"Convert INX to IDML"});
		with(myDialog.dialogColumns.add()){
			staticTexts.add({staticLabel:"Convert a single file or a folder?"});
			var myConvertRadioButtons = radiobuttonGroups.add();
			with(myConvertRadioButtons){
				radiobuttonControls.add({staticLabel:"Select file", checkedState:true});
				radiobuttonControls.add({staticLabel:"Select folder"});
			}
		}
		var myResult = myDialog.show();
		if(myResult == true){
			myConvertRange = myConvertRadioButtons.selectedButton;
			myDialog.destroy();
		}
		else{
			myConvertRange = 3;
			myDialog.destroy();
		}
		return myConvertRange;
	}
	//Windows version of the file filter.
	function myWinOSFileFilter(myFolder){
		var myFiles = new Array;
		var myFilteredFiles = new Array; 
		myFiles = myFolder.getFiles("*.inx"); 
		if(myFiles.length != 0){ 
			for(var myFileCounter = 0; myFileCounter < myFiles.length; myFileCounter++){ 
				myFilteredFiles.push(myFiles[myFileCounter]); 
			} 
		} 
		return myFilteredFiles;
	}
	function myMacOSFileFilter(myFolder){
		var myFilteredFiles = myFolder.getFiles(myFileFilter);
		return myFilteredFiles;
	}
	//Mac OS version of file filter
	//Have to provide a separate version because not all Mac OS users use file extensions
	//and/or file extensions are sometimes hidden by the Finder.
	function myFileFilter(myFile){
		var myFileType = myFile.type;
		switch (myFileType){
			case "IDx3":
			case "IDx4":
				return true;
				break;
			default:
				if(myFile.name.indexOf(".inx")>-1){
				return true;
				break;			
			}
		}
		return false;
	}
	//</fragment>
}
function myTeardown(){
}