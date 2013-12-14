//ProcessPrice.jsx
//An InDesign CS6 JavaScript
//
//Provide an example fragment for the XMLRulesTable script.

//<fragment>
function ProcessPrice(){
    this.name = "ProcessPrice";
    this.xpath = "//device[@type = 'VCO']/price";	
    this.apply = function(myElement, myRuleProcessor){
        with(myElement){
            __skipChildren(myRuleProcessor);
            var myNewElement = myContainerElement.xmlElements.item(-1).xmlElements.add(app.documents.item(0).xmlTags.item("Column"));
            var myElement = myElement.move(LocationOptions.atBeginning, myNewElement);
            myElement.insertTextAsContent("$", XMLElementPosition.beforeElement);
        }
        return true;
    }		
}
//</fragment>
