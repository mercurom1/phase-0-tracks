// First function takes in an array of strings and
// returns the longest string.
// step 0: set variable as an empty string to signify the
// longest string.  
// step 1: iterate through the array, using 'for'
// step 2: add '.length' on each string to find the length
// step 3: add a conditional to return the longest string.




function longestWord(arr) {
	var longest = "";
	for (var i = 0; i < arr.length ; i++) {
		if (arr[i].length > longest.length) {
			longest = arr[i];
		}
	}
	return longest;
}

//Driver code----------------------------
wordArr = ["hello", "world", "mercuro"]
//console.log(longestWord(wordArr))

moreWords = ["pogba", "herrera", "zlatan", "manchester"]
//console.log(longestWord(moreWords))

//----------------------------------------

// The second function takes in two objects as an arguemnet.
// It is suppose to get each object to see if there is any 
// matching keys and values. 
// iterate thru the first object
// Make a conditional.
// return true if the keys match
// return false if the keys dont match




function pairMatched(obj1, obj2) {
	for (var key in obj1) {
		if (obj2[key] == obj1[key]) {
			return true;
		}
		else {
			return false;
		}
	}
}

// --------- Driver Code -----------------------------
//var personOne = { name: "Mike", age: 44, hair: "Brown"}
//var personTwo = { name: "Mike", age: 44, hair: "Brown"}
//console.log(pairMatched(personOne, personTwo))

//dogOne = {name: "Cooper", age: 1, good: false}
//dogTwo = {name: "Brown", color: "Brown", good: true}
//console.log(pairMatched(dogOne, dogTwo))

// ---------------------------------------------------


// The final function,takes in an argument of an integer
// The integer reflects the length of the array
// integer will be equal to the string array
// set the 'for' iteration to < integer 
// need a variable of a alphabet array
// add a random letter from the alphabet array into a 'word' variable
// push it a random number of times between 1-10 => Math.random * 10 
// Use math.floor before math.random to round down to a whole number.
// return the string array

function randomWords(int) {
	var stringArr = [];
	var alphabetArr = "abcdefghijklmnop";
	var word = "";
	for ( i = 0; i < int; i++) {
		for ( x = 0; x < Math.floor(Math.random() * 10); x++) {
			word += alphabetArr[Math.floor(Math.random() * 10)];

		}
		stringArr.push(word);
	}
	return stringArr;

}


// ------- Driver Code-------------------
for  (y = 0; y < 10; y++) {
	console.log("Word collection " + (y + 1));
	var newWordArray = randomWords(4);
	console.log(newWordArray);
	var theLongest = longestWord(newWordArray);
	console.log("The longest word in this array is:");
	console.log(theLongest);
	console.log("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}




