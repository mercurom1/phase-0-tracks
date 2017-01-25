// program reverses a word that is set in as its parameter.
// two variables, first var is the string given in
// second var is the new empty string that is going to take in the reverse letters
// output is the second var 
// use a 'for' loop to decrement thru the string
// use 'str.length - 1' to set 'i' as the last letter of the string 
// add a conditional, and have 'i' add the next backwards letter to the string
// by 'i--'
// add colon marks at the end of each line or block of code

function reverse(str) {
	var reverseString = "";
	for (var i = str.length -1; i >= 0; i--) {
		reverseString += str[i];
	}
	return reverseString;
} 


//driver code

var MyName = true;
var MyAge = true;

if (MyName && MyAge) {
	console.log(reverse('mike'));
} else {
	console.log(reverse('billy'));
}


