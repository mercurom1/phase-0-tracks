#lunch order
	#name
		#primary meat/cheese
		#toppings
		#dressings

lunch_order = {
	mike: {
		meat_cheese: [
			"turkey",
			"american cheese"
		],
		toppings: [
			"lettuce",
			"tomato"
		],
		dressings: [
			"mayo"
		]
	},
	john: {
		meat_cheese: [
			"ham",
			"cheddar"
		],
		toppings: [
			"lettuce",
			"red onion"
		],
		dressings:[
			"russian dressing"
		] 
	},
	james: {
		meat_cheese: [
			"salami",
			"ham"
		],
		toppings: [
			"lettuce",
			"tomato",
			"banana pepper"
		],
		dressings: [
			"oil",
			"vinegar",
			"mayo"
		]
	}
}


puts "I decided to be a nice guy and take my co-workers lunch order"
p lunch_order

puts "Of course on my way to the deli I get multiple text messages of my co workers changing their orders"


puts "mike: hey, I'm actually in the mood for some swiss cheese, can I please have that instead??"
puts "me: okay no problem buddy"

lunch_order[:mike][:meat_cheese][1] = "swiss"
p lunch_order

puts "john: I totally forgot to let you know that you know that I wanted tomato on my sub too "
puts "me: ugh fine"

lunch_order[:john][:toppings].push("tomato")
p lunch_order

puts "james: would it be to much to ask if I could get provolone and pepperoni on my sub?"
puts "james: oh yeah I dont want mayo on it anymore "
puts "me:ugh I hate you"

lunch_order[:james][:meat_cheese].push("provolone", "pepperoni")
lunch_order[:james][:dressings].pop(1)
p lunch_order






