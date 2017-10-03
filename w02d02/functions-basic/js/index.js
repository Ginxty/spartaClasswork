function addTwo(num1, num2){
	return(num1 + num2);
}

function addThree(num1, num2, num3){
	return(num1 + num2 + num3);
}

function multiplyTwo(num1, num2){
	return(num1 * num2);
}

function reverseWord(word1){
	return word1.split('').reverse().join('');;
}

function increaseByPercentage(total, percentage){
	return total * (1 + (percentage / 100));
}

function celciusToFahrenheit(celcius){
	return celcius * (9/5) + 32;
}

function fahrenheitToCelcius(fahrenheit){
	return (fahrenheit - 32) / 1.8;
}

function stripVowels (word){
	return word.replace(/[aeiou]/ig,'')
}

// do not delete
runTests();