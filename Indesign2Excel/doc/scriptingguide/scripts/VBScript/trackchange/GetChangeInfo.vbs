Rem GetChangeInfo.vbs
Rem An InCopy CS6 VBScript
Rem 
Rem Shows how to get Track change infomation

Rem

main
Function main()
	Set myInDesign = CreateObject("InDesign.Application.CS6")
	mySetup myInDesign
	mySnippet myInDesign
	myTeardown myInDesign
End Function
Function mySetup(myInDesign)
End Function
Function mySnippet(myInDesign)
	Set myDocument = myInDesign.Documents.Item(1)
	Set myStory = myDocument.Stories.Item(1)
	Set myChange = myStory.Changes.Item(1)
  With  myChange
      	Rem idChangeTypes.idDeletedText  (Read Only) Deleted text.
      	Rem idChangeTypes.idInsertedText  (Read Only) Insert text.
      	Rem idChangeTypes.idMovedText  (Read Only) Moved text.
      	myTypes = .ChangeType
      	Rem Characters  A collection of Characters.
      	Set myCharacters = .Characters
      	Rem Character = myCharacters.Item(0);
      	myDate = .Date
      	Rem InsertionPoints A collection of insertion points.
      	Rem  insertpoint = myInsertionPoints.Item(0);
      	Set myInsertionPoints = .InsertionPoints
      	Rem Lines  (Read Only) A collection of lines.
      	Set myLines = .Lines
      	Rem Paragraphs  (Read Only) A collection of paragraphs.
      	Set myParagraphs =.Paragraphs
      	Rem InsertionPoints A collection of insertion points.
      	Rem  myInsertpoint = myInsertionPoints.Item(0);
      	Set myStoryOffset = .StoryOffset
      	Rem TtextColumns  (Read Only) A collection of text columns.
      	Set myTextColumns = .TextColumns
      	Rem TextStyleRanges  (Read Only) A collection of text style ranges.
      	
      	Set myTextStyleRanges = .TextStyleRanges
      	Rem TextVariableInstances  (Read Only) A collection of text variable instances.
      	Set myTextVariableInstances = .TextVariableInstances
      	
      	Rem Texts  (Read Only) A collection of text objects.
      	
      	Set myTexts = .Texts
      	Rem The user who made the change. Note: Valid only when track changes is true.
      	myUserName = .UserName
      	Rem Words  A collection of words
      	Set myWords = .Words
		End With
End Function
Function myTeardown(myInDesign)
End Function
