//InvokeMenuAction.jsx
//An InDesign CS6 JavaScript
//
//Runs a menu action.
//Get a reference to a menu action.

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
    var myMenuAction = app.menuActions.item("$ID/Convert to Note");
    if(app.selection.length > 0){
    	switch(app.selection[0].constructor.name){
    		case "InsertionPoint":
    		case "Character":
    		case "Word":
    		case "TextStyleRange":
    		case "Line":
    		case "Paragraph":
    		case "TextColumn":
    		case "Text":
    		case "Story":
    			myMenuAction.invoke();
    			break;
    		default:
    			alert("Please select some text and try again.");
    	}
    }
    else{
    	alert("Please select some text and try again.");
    }
    //</fragment>
}

function myTeardown(){
}

