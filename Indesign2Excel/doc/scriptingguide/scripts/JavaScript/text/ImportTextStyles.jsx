//ImportTextStyles.jsx
//An InDesign CS6 JavaScript
//
//Shows how to import paragraph styles and character styles from another document.
main();
function main(){
    mySetup();
    mySnippet();
    myTeardown();
}
function mySetup(){
    var myParagraphStyleA, myParagraphStyleB, myCharacterStyle, myName;
    var myDocument = app.documents.add();
    //Create a paragraph style named "myParagraphStyleA" if no 
    //style by that name already exists.
    try{
        myParagraphStyleA = myDocument.paragraphStyles.item("myParagraphStyleA");
        //If the paragraph style does not exist, trying to get its name will generate an error.
        myName = myParagraphStyleA.name;
    }
    catch (myError){
        //The paragraph style did not exist, so create it.
        myParagraphStyleA = myDocument.paragraphStyles.add({name:"myParagraphStyleA"});
    }
    //Create another paragraph style.
    try{
        myParagraphStyleB = myDocument.paragraphStyles.item("myParagraphStyleB");
        //If the paragraph style does not exist, trying to get its name will generate an error.
        myName = myParagraphStyleB.name;
    }
    catch (myError){
        //The paragraph style did not exist, so create it.
        myParagraphStyleB = myDocument.paragraphStyles.add({name:"myParagraphStyleB"});
    }
    //Create a character style.
    try{
        myCharacterStyle = myDocument.characterStyles.item("myCharacterStyle");
        //If the paragraph style does not exist, trying to get its name will generate an error.
        myName = myCharacterStyle.name;
    }
    catch (myError){
        //The paragraph style did not exist, so create it.
        myCharacterStyle = myDocument.characterStyles.add({name:"myCharacterStyle"});
    }
    //Save the document (you'll have to fill in a valid file path for your system).
    var myFilePath = "/c/styles.indd";
    myDocument.close(SaveOptions.yes, File(myFilePath));
}
function mySnippet(){
    //<fragment>
    //Create a new document.
    myDocument = app.documents.add();
    //Import the styles from the saved document.
    //importStyles parameters:
    // Format as ImportFormat enumeration. Options for text styles are:
    // ImportFormat.paragraphStylesFormat
    // ImportFormat.characterStylesFormat
    // ImportFormat.textStylesFormat
    // From as File
    // GlobalStrategy as GlobalClashResolutionStrategy enumeration. Options are:
    // GlobalClashResolutionStrategy.doNotLoadTheStyle
    // GlobalClashResolutionStrategy.loadAllWithOverwrite
    // GlobalClashResolutionStrategy.loadAllWithRename
    myDocument.importStyles(ImportFormat.textStylesFormat, File("/c/styles.indd"), GlobalClashResolutionStrategy.loadAllWithOverwrite);
    //</fragment>
}
function myTeardown(){
}