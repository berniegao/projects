//LayoutContextMenuLabelGraphic.jsx
//An InDesign CS6 JavaScript
//
//Shows how to add an interactive menu element to the layout context menu
//(the context menu that appears when you have an object selected).
#targetengine "session"
main();
function main(){
	mySetup();
	mySnippet();
    myTeardown();
}
//Run the setup script to create an example document containing a special
//type of graphic. This graphic will contain XMP information that can be used
//by a new menu item added to the Layout context menu when the graphic is selected.
function mySetup(){
	var myDocument = app.documents.add();
	myDocument.viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
	myDocument.viewPreferences.rulerOrigin = RulerOrigin.pageOrigin;
	myDocument.documentPreferences.pageWidth = 222 + 72;
	myDocument.documentPreferences.pageHeight = 214.658 + 72;
	with(myDocument.metadataPreferences){
		author = "Adobe Systems";
		description = "This is a sample PDF with XMP metadata.";
	}
	var myPage = myDocument.pages.item(0);
	app.polygonPreferences.numberOfSides = 5;
	app.polygonPreferences.insetPercentage = 50;
	var myPolygon = myPage.polygons.add({geometricBounds:[72, 72, 214.658, 222]});
	myPolygon.exportFile(ExportFormat.pdfType, File(Folder.desktop + "/test.pdf"));
	myDocument.close(SaveOptions.no);
	myDocument = app.documents.add();
	myDocument.pages.item(0).place(File(Folder.desktop + "/test.pdf"));
}
//Now that you've set up an example document containing graphic,
//frame, run the snippet to install a submenu and menu choice to the Layout
//context menu. After you run the snippet, select the graphic with the
//Selection tool, then display the Layout context menu. You'll see the 
//"Create Graphic Label" menu option appear on the context menu. 
//When you select this menu item, InDesign will display a dialog
//containing options for adding a text frame near the graphic.
function mySnippet(){
    //<fragment>
	//The local-independent name (aka "key string") for the 
	//Layout context menu is "$ID/RtMouseLayout".
	var myLayoutContextMenu = app.menus.item("$ID/RtMouseLayout");
	//Create the event handler for the "beforeDisplay" event of the Layout context menu.
	var myBeforeDisplayListener = myLayoutContextMenu.addEventListener("beforeDisplay", myBeforeDisplayHandler, false);
    //</fragment>
}

function myTeardown(){
}
//<fragment>
//This event handler checks the type of the selection.
//If a graphic is selected, the event handler adds the script menu action to the menu.
function myBeforeDisplayHandler(myEvent){
	var myLayoutContextMenu = app.menus.item("$ID/RtMouseLayout");
	//Check for open documents is a basic sanity check--
	//it should never be needed, as this menu won't be
	//displayed unless an item is selected. But it's best
	//to err on the side of safety.
	if(app.documents.length != 0){
		if(app.selection.length > 0){
			var myObjectList = new Array;
			//Does the selection contain any graphics?
			for(var myCounter = 0; myCounter < app.selection.length; myCounter ++){
				switch(app.selection[myCounter].constructor.name){
					case "PDF":
					case "EPS":
					case "Image":
							//Do not add the graphic to the array if it is an inline/anchored graphic.
							switch(app.selection[myCounter].parent.parent.constructor.name){
								case "Page":
								case "Spread":
								case "Group":
								case "Rectangle":
								case "Oval":
								case "Polygon":
									myObjectList.push(app.selection[myCounter]);
									break;
							}
						break;
					case "Rectangle":
					case "Oval":
					case "Polygon":
						//Do not add the graphic to the array if it is an inline/anchored graphic.
						if(app.selection[myCounter].graphics.length != 0){
							switch(app.selection[myCounter].parent.constructor.name){
								case "Page":
								case "Spread":
								case "Group":
								case "Rectangle":
								case "Oval":
								case "Polygon":
									myObjectList.push(app.selection[myCounter].graphics.item(0));
									break;
						}
						break;
					}
				}
			}
			if(myObjectList.length > 0){
				//Add the menu item if it does not already exist.
				if(myCheckForMenuItem(myLayoutContextMenu, "Label Graphic") == false){
					myMakeLabelGraphicMenuItem();
				}
			}
			else{
				//Remove the menu item, if it exists.
				if(myCheckForMenuItem(myLayoutContextMenu, "Label Graphic") == true){
					myLayoutContextMenu.menuItems.item("Label Graphic").remove();
				}
			}
		}
	}
	function myMakeLabelGraphicMenuItem(){
		//alert("Got to the myMakeLabelGraphicMenuItem function!");
		if(myCheckForScriptMenuItem("Label Graphic") == false){
			//alert("Making a new script menu action!");
			var myLabelGraphicMenuAction = app.scriptMenuActions.add("Label Graphic");
			var myLabelGraphicEventListener = myLabelGraphicMenuAction.eventListeners.add("onInvoke", myLabelGraphicEventHandler, false);
		}
		var myLabelGraphicMenuItem = app.menus.item("$ID/RtMouseLayout").menuItems.add(app.scriptMenuActions.item("Label Graphic"));
		function myLabelGraphicEventHandler(myEvent){
			//alert("Got to myLabelGraphicEventListener!");
			if(app.selection.length > 0){
				var myObjectList = new Array;
				//Does the selection contain any graphics?
				for(var myCounter = 0; myCounter < app.selection.length; myCounter ++){
					switch(app.selection[myCounter].constructor.name){
						case "PDF":
						case "EPS":
						case "Image":
								//Do not add the graphic to the array if it is an inline/anchored graphic.
								switch(app.selection[myCounter].parent.parent.constructor.name){
									case "Page":
									case "Spread":
									case "Group":
									case "Rectangle":
									case "Oval":
									case "Polygon":
										myObjectList.push(app.selection[myCounter]);
										break;
								}
							break;
						case "Rectangle":
						case "Oval":
						case "Polygon":
							//Do not add the graphic to the array if it is an inline/anchored graphic.
							if(app.selection[myCounter].graphics.length != 0){
								switch(app.selection[myCounter].parent.constructor.name){
									case "Page":
									case "Spread":
									case "Group":
									case "Rectangle":
									case "Oval":
									case "Polygon":
										myObjectList.push(app.selection[myCounter].graphics.item(0));
										break;
							}
							break;
						}
					}
				}
				if(myObjectList.length > 0){
					myDisplayDialog(myObjectList);
				}
				else{
					alert("Please select an independent graphic and try again.");
				}
			}
			//Function that adds the label.
			function myAddLabel(myGraphic, myLabelType, myLabelHeight, myLabelOffset, myLabelStyleName, myLayerName){
				var myLabelLayer;
				var myDocument = app.documents.item(0);
				var myLabel;
				myLabelStyle = myDocument.paragraphStyles.item(myLabelStyleName);
				var myLink = myGraphic.itemLink;
				try{
					myLabelLayer = myDocument.layers.item(myLayerName);
					//if the layer does not exist, trying to get the layer name will cause an error.
					myLabelLayer.name;
				}
				catch (myError){
					myLabelLayer = myDocument.layers.add(myLayerName); 
				} 
				//Label type defines the text that goes in the label.
				switch(myLabelType){
					//File name
					case 0:
						myLabel = myLink.name;
						break;
					//File path
					case 1:
						myLabel = myLink.filePath;
						break;
					//XMP description
					case 2:
						try{
							myLabel = myLink.linkXmp.description;
						}
						catch(myError){
							myLabel = "No description available.";
						}
						break;
					//XMP author
					case 3:
						try{
							myLabel = myLink.linkXmp.author
						}
						catch(myError){
							myLabel = "No author available.";
						}
						break;
				}
				var myFrame = myGraphic.parent;
				var myX1 = myFrame.geometricBounds[1]; 
				var myY1 = myFrame.geometricBounds[2] + myLabelOffset; 
				var myX2 = myFrame.geometricBounds[3]; 
				var myY2 = myY1 + myLabelHeight;
				var myTextFrame = myFrame.parent.textFrames.add(myLabelLayer, undefined, undefined,{geometricBounds:[myY1, myX1, myY2, myX2], contents:myLabel}); 
				myTextFrame.textFramePreferences.firstBaselineOffset = FirstBaseline.leadingOffset; 
				myTextFrame.paragraphs.item(0).appliedParagraphStyle = myLabelStyle;				
			}
			function myDisplayDialog(myObjectList){
				var myLabelWidth = 100;
				var myStyleNames = myGetParagraphStyleNames(app.documents.item(0));
				var myLayerNames = myGetLayerNames(app.documents.item(0));
				var myDialog = app.dialogs.add({name:"LabelGraphics"});
				with(myDialog.dialogColumns.add()){
					//Label type
					with(dialogRows.add()){
						with(dialogColumns.add()){
							staticTexts.add({staticLabel:"Label Type:", minWidth:myLabelWidth});
						}
						with(dialogColumns.add()){
							var myLabelTypeDropdown = dropdowns.add({stringList:["File name", "File path", "XMP description", "XMP author"], selectedIndex:0});
						}
					}
					//Text frame height
					with(dialogRows.add()){
						with(dialogColumns.add()){
							staticTexts.add({staticLabel:"Label Height:", minWidth:myLabelWidth});
						}
						with(dialogColumns.add()){
							var myLabelHeightField = measurementEditboxes.add({editValue:24, editUnits:MeasurementUnits.points});
						}
					}
					//Text frame offset
					with(dialogRows.add()){
						with(dialogColumns.add()){
							staticTexts.add({staticLabel:"Label Offset:", minWidth:myLabelWidth});
						}
						with(dialogColumns.add()){
							var myLabelOffsetField = measurementEditboxes.add({editValue:0, editUnits:MeasurementUnits.points});
						}
					}
					//Style to apply
					with(dialogRows.add()){
						with(dialogColumns.add()){
							staticTexts.add({staticLabel:"Label Style:", minWidth:myLabelWidth});
						}
						with(dialogColumns.add()){
							var myLabelStyleDropdown = dropdowns.add({stringList:myStyleNames, selectedIndex:0});
						}
					}
					//Layer
					with(dialogRows.add()){
						with(dialogColumns.add()){
							staticTexts.add({staticLabel:"Layer:", minWidth:myLabelWidth});
						}
						with(dialogColumns.add()){
							var myLayerDropdown = dropdowns.add({stringList:myLayerNames, selectedIndex:0});
						}
					}
				}
				var myResult = myDialog.show();
				if(myResult == true){
					var myLabelType = myLabelTypeDropdown.selectedIndex;
					var myLabelHeight = myLabelHeightField.editValue;
					var myLabelOffset = myLabelOffsetField.editValue;
					var myLabelStyle = myStyleNames[myLabelStyleDropdown.selectedIndex];
					var myLayerName = myLayerNames[myLayerDropdown.selectedIndex];
					myDialog.destroy();
					var myOldXUnits = app.documents.item(0).viewPreferences.horizontalMeasurementUnits;
					var myOldYUnits = app.documents.item(0).viewPreferences.verticalMeasurementUnits;
					app.documents.item(0).viewPreferences.horizontalMeasurementUnits = MeasurementUnits.points;
					app.documents.item(0).viewPreferences.verticalMeasurementUnits = MeasurementUnits.points;
					for(var myCounter = 0; myCounter < myObjectList.length; myCounter++){
						var myGraphic = myObjectList[myCounter];
						myAddLabel(myGraphic, myLabelType, myLabelHeight, myLabelOffset, myLabelStyle, myLayerName);
					}
					app.documents.item(0).viewPreferences.horizontalMeasurementUnits = myOldXUnits;
					app.documents.item(0).viewPreferences.verticalMeasurementUnits = myOldYUnits;
				}
				else{
					myDialog.destroy();
				}
				function myGetParagraphStyleNames(myDocument){
					var myStyleNames = myDocument.paragraphStyles.everyItem().name;
					return myStyleNames;
				}
				function myGetLayerNames(myDocument){
					var myLayerNames = new Array;
					var myAddLabelLayer = true;
					for(var myCounter = 0; myCounter<myDocument.layers.length; myCounter++){
						myLayerNames.push(myDocument.layers.item(myCounter).name);
						if (myDocument.layers.item(myCounter).name == "Labels"){
							myAddLabelLayer = false;
						}
					}
					if(myAddLabelLayer == true){
						myLayerNames.push("Labels");
					}
					return myLayerNames;
				}
			}				
		}
	}
	function myCheckForMenuItem(myMenu, myString){
		var myResult = false;
		try{
			var myMenuItem = myMenu.menuItems.item(myString);
			myMenuItem.name;
			myResult = true
		}
		catch(myError){}
		//alert("Menu item found? " + myResult);
		return myResult;
	}
	function myCheckForScriptMenuItem(myString){
		var myResult = false;
		try{
			var myScriptMenuAction = app.scriptMenuActions.item(myString);
			myScriptMenuAction.name;
			myResult = true
		}
		catch(myError){}
		//alert("Script menu action found? " + myResult);
		return myResult;			
	}
}
//</fragment>