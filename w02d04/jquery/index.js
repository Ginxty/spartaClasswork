$(function() {
    // Getting element from the dom
    var count = $("#count");
    // Creating new element to add to the DOM
    var li = $("<li>New thing</li>");
    // Add element to the DOM
    $("#list").append(li);

    var todos = ["Food shop", "Wash clothes", "Pay bills"];
    // Loop
    $(todos).each(function(index, todo) {
        console.log(todo);
    })

    //.html - changes text on the page
    $("count").html("5")

    //.css - cahnge css on the page
    $("count").css("color", "red");

    // add class
    $("li").class("done")

    //chaining! all done in one line
    $("count").css("color", "red").class("done")

    //Events!
    $("myButton").click(function(){
    		console.log("button clicked!");
	})

    $("myButton").on("click", function() {
    	
    })
});