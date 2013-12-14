//TableSelection.jsx
//An InDesign CS6 JavaScript
//
//Shows how to determine if the selection is in a table.
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
	if(app.documents.length != 0){
		if(app.selection.length != 0){
			switch(app.selection[0].constructor.name){
				//When a row, a column, or a range of cells is 
				//selected, the type returned is "Cell"
				case "Cell":
					alert("A cell is selected.");
					break;
				case "Table":
					alert("A table is selected.");
					break;
				case "InsertionPoint":
				case "Character":
				case "Word":
				case "TextStyleRange":
				case "Line":
				case "Paragraph":
				case "TextColumn":
				case "Text":
					if(app.selection[0].parent.constructor.name == "Cell"){
						alert("The selection is inside a table cell.");
					}
					break;
				case "Rectangle":
				case "Oval":
				case "Polygon":
				case "GraphicLine":
					if(app.selection[0].parent.parent.constructor.name == "Cell"){
						alert("The selection is inside a table cell.");
					}
					break;
				case "Image":
				case "PDF":
				case "EPS":
					if(app.selection[0].parent.parent.parent.constructor.name == "Cell"){
						alert("The selection is inside a table cell.");
					}
					break;
				default:
					alert("The selection is not inside a table.");
					break;
			}
		}
	}
	//</fragment>
}
function myTeardown(){
}
