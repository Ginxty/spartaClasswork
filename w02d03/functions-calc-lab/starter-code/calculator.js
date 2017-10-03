var tryagain = true;

// Bonus, keep looping until we say stop
while (tryagain) {
    var calc = prompt("calc or wordCalc?")
    if(calc == "calc") {
        runCalc()
    } else if (calc == "wordCalc") {
        runWordCalc()
    }



    // should we continue. "" is falsey "q" is truthy
    tryagain = !prompt('Enter to continue, or (q)uit');



}

function runCalc() {
    var value1 = parseFloat(prompt('enter first value')); // parseFloat to turn the string to a decimal number
    var value2 = parseFloat(prompt('enter the second value'));
    var choice = prompt('Choose your action (a)dd (s)ubtract, (m)ultiply, (d)ivide, (pow)er, (ro)ot, (max)/biggest number,  ') || "a";

    // create an empty answer variable
    var answer = null;

    // check all the options and perform the actions
    if(choice == "a") {

        answer = add(value1,value2)

    } else if(choice == "s") {

        answer = sub(value1,value2)

    } else if(choice == "m") {

        answer = multi(value1,value2)

    } else if(choice == "d") {

        answer = div(value1,value2)

    } else if(choice == "pow") {

        answer = pow(value1,value2)

    } else if(choice == "ro") {

        answer = ro(value1)

    } else if(choice == "max") {
        var value3 = prompt("enter a third value")
        answer = max(value1, value2, value3)


    } else { // didn't match any of the options

      alert('Sorry, that option was not valid, nerd');

    }

    // only print the answer if we calculated one
    if(answer) alert(answer);
}

function runWordCalc() {
    var choice = prompt('pick a function, longest, ')

    if (choice == "longest") {
        answer = longest(choice)
    } else { // didn't match any of the options

      alert('Sorry, that option was not valid, nerd');
}
}





function add(value1,value2){
    return value1 + value2
}

function sub(value1,value2){
    return value1 - value2
}

function multi(value1,value2){
    return value1 * value2
}
function div(value1,value2){
    return value1 / value2
}
function pow(value1,value2){
    return Math.pow(value1, value2)
}
function ro(value1){
    return Math.sqrt(value1);
}
function max(value1,value2,value3){
    return Math.max(value1,value2,value3);
}
function longest(string) {
  return string
    .trim()
    .split(/\s+/)
    .reduce((longest, word) => word.length > longest.length ? word : longest);
}


