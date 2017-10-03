var li = document.getElementsByTagName('li')

for (var i = 0; i < 64; i++) {
    addListItem();
}


 // for (var i = 0; i < li.length; i++) {
 //     li[i].className = "white";
 // }

for (var i = 0; i <= 7; i++) {
  if (i % 2 === 0){
    li[i].className = "black";
  }else {
    li[i].className = "white";
  }
};

for (var i = 8; i <= 15; i++) {
  if (i % 2 === 0){
    li[i].className = "white";
  }else {
    li[i].className = "black";
  }
};
 //  for (var i = 0; i < li.length; i += 2) {
 //     li[i].className = "black";
 // }

// for(var i=0;i<li.length;i++) {
//   li[i].style["background-color"] = i % 2 === 0 ? "black" : "white";
// }




function addListItem() {
    var newItem = document.createElement("li");
    var ul = document.getElementsByTagName('ul')[0]
    ul.appendChild(newItem);
}
