//GuideOptions.jsx
//An InDesign CS6 JavaScript
//
//Shows how to set guide options.

main();

function main(){
    mySetup();
    mySnippet();
    myTeardown();
}

//<setup>
function mySetup(){
    app.documents.add();
}
//</setup>

//<snippet>
function mySnippet(){
    //Shows how to set guide options.
    var myDocument = app.documents.item(0);
    //<fragment>
    var myGuide;
    //Create a layer named "guide layer".
    var myLayer = myDocument.layers.add({name:"guide layer"});
    //Add a series of guides to page 1.
    with(myDocument.pages.item(0)){
    	//Create a guide on the layer we created above.
    	myGuide = guides.add(myLayer,
                             {orientation:HorizontalOrVertical.horizontal,
                              location:"12p"});
    	//Another way to make a guide on a specific layer.
    	myGuide = guides.add(undefined,
                             {itemLayer:myLayer,
                              orientation:HorizontalOrVertical.horizontal,
                              location:"14p"});
    	//Make a locked guide.
    	myGuide = guides.add(myLayer,{locked:true,
                                      orientation:HorizontalOrVertical.horizontal,
                                      location:"16p"});
    	//Set the view threshold of a guide.
    	myGuide = guides.add(myLayer,{viewThreshold:100,
                                      orientation:HorizontalOrVertical.horizontal,
                                      location:"18p"});
    	//Set the guide color of a guide using a UIColors constant.
    	myGuide = guides.add(myLayer,{guideColor:UIColors.gray,
                                      orientation:HorizontalOrVertical.horizontal,
                                      location:"20p"});
    	//Set the guide color of a guide using an RGB array.
    	myGuide = guides.add(myLayer,{guideColor:[192, 192, 192],
                                      orientation:HorizontalOrVertical.horizontal,
                                      location:"22p"});
    }
    //</fragment>
}
//</snippet>

//<teardown>
function myTeardown(){
}
//</teardown>


