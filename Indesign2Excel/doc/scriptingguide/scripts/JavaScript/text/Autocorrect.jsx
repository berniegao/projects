//Autocorrect.jsx
//An InDesign CS6 JavaScript
//
//Shows how to work with the autocorrect feature.
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
    //The autocorrect preferences object turns the 
    //autocorrect feature on or off.
    app.autoCorrectPreferences.autoCorrect = true;
    app.autoCorrectPreferences.autoCorrectCapitalizationErrors = true;
    //Add a word pair to the autocorrect list. Each AutoCorrectTable is linked
    //to a specific language. 
    var myAutoCorrectTable = app.autoCorrectTables.item("English: USA");
    //To safely add a word pair to the auto correct table, get the current
    //word pair list, then add the new word pair to that array, and then
    //set the autocorrect word pair list to the array.
    var myWordPairList = myAutoCorrectTable.autoCorrectWordPairList;
    //Add a new word pair to the array.
    myWordPairList.push(["paragarph", "paragraph"]);
    //Update the word pair list.
    myAutoCorrectTable.autoCorrectWordPairList = myWordPairList;
    //To clear all autocorrect word pairs in the current dictionary:
    //myAutoCorrectTable.autoCorrectWordPairList = [[]];
    //</fragment>
}
function myTeardown(){
}