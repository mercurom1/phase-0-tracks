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
console.log(longestWord(wordArr))

//----------------------------------------