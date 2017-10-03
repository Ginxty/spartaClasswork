// write code here
 
 document.addEventListener('DOMContentLoaded', function() {
 	var firstName = document.getElementById("firstname")
 	var buttons = document.getElementsByClassName("myButtons")
 	var form = document.getElementById("myForm");
	var button = document.getElementById("myButton")

	button.addEventListener("click", function(event) {
	 	console.log(this);
	});

	form.addEventListener("submit", function(event){
		event.preventDefault();
		if (firstname.value) {
			console.log(firstname.value);
		} else {
			console.log ("please enter a name");
		}

		return this.submit()
	});


	for (var i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener("click", function() {
			console.log(this.value + "clicked!");
		});
	}

});

// button.addEventListener("click", handleClick())



// function handleClick() {
// 		console.log("separate functin was run!");
// 	}