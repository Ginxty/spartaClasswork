var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];


function addListItem(value) {
    var newItem = document.createElement("li");
    newItem.innerHTML = value;
    document.getElementById('list').appendChild(newItem);
}


// write append loop here
var selected = document.getElementsByTagName("li");
        for (var i = 0; i < listItems.length; i++) {
            addListItem(listItems[i]);
        }

// write the class loop here

    //Set the class of every other list item to be "even"
    var listItems = document.getElementsByTagName("li");
    for (var i = 0; i < listItems.length; i += 2) {
    listItems[i].className = "even";
    }    

    //Set the count span to be the number of list items.
    var count = document.getElementById('count');
    count.innerHTML = listItems.length;


// getting elements and changing them in the dom
//var wrapperDiv = document.getElementById("wrapper")
//console.log(wrapperDiv)
//wrapperDiv.style.backgroundColor = "blue"

//var lis = document.getElementsByTagName("li");
//console.log(lis)
//lis[1].innerHTML = "check this nerd, i'm a changed list"

//var selected = document.querySelectorAll("li.selected")

//for (var i = 0; i < selected.length; i++) {
//	selected[i].style.color = "red"
//}

//putting brand new things onto the page
//var ptag = document.createElement('p');
//ptag.innerHTML = "brand new p tag!";
//document.body.appendChild(ptag)


