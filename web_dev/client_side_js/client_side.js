var buttonOne = document.getElementById("button_one");


//buttonOne.addEventListener("mouseover", changeColor);

var buttonTwo = document.getElementById("button_two");
var buttonThree = document.getElementById("button_three");

// attempted to loop through these for hours. 

var body = document.querySelectorAll('button');
console.log(body[0]);
console.log(body[1]);
console.log(body[2]);
for (var i = 0; i < body.length; i++){
	body[i].addEventListener("click", changeColor);
}



function changeColor(event) {
	buttonOne.style.color = "red";
	buttonTwo.style.backgroundColor = "green";
	buttonThree.style.color = "orange";

}




