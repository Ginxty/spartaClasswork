 $(function() {

 	setTimeout(function() {
 		alert("1 second")

 	}, 1000);



 	for (var i = 0; 1 < 16; i++) {
 		setInterval(function() {
 			$("ul").append($("<li></li>"));
 		}, i*1000)
 	}

 	$("li").each(function(index, li) {
 		setTimeout(function() {
 			$("li").slideUp();
 		}, index*500)
 });
 


 });