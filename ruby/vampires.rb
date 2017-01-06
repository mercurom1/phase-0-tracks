puts "how many employees are being processed?"
employees = gets.chomp().to_i

this_year = 2017 
n = 1

until employees == 0 
	puts "Employee number #{n}: What is your name?"
	name = gets.chomp()

	puts "Employee #{n}: What is your age?"
	age = gets.chomp().to_i

	puts "Employee #{n}: What year were you born?"
	birth_year = gets.chomp().to_i

	puts "Employee #{n}: Our company cafeteria serves amazing garlic bread; would you like some? (y/n)"
	garlic_answer = gets.chomp()

	puts "Employee #{n}: Would you be interested in enrolling in our company's health insurance plan? (y/n)"
	health_answer = gets.chomp()

	if (age + birth_year == this_year) || (age + birth_year + 1 == this_year)
		age_check = true;
	else 
		age_check = false;
	end

	if garlic_answer == "y"
		garlic_check = true;
	else 
		garlic_check = false;
	end

	if health_answer == "y"
		health_check = true;
	else 
		health_check = false;
	end

	if age_check && (garlic_check || health_check)
		result = "Employee number #{n}: is probably not a vampire."
	elsif !age_check && (garlic_check || health_check)
		result = "Employee number #{n}: is probably a vampire."
	elsif !age_check && !garlic_check && !health_check
		result = "Employee #{n}: is almost certainly a vampire. Run!"
	else 
		result = "Results are inconclusive"
	end

	if name == "Drake Cula" || name == "Tu Fang"
		result = "Employee number #{n}: is Deffff a vampire!!!!"
	end

	allergies = ""
	while allergies != "done"
		puts "Employee number #{n}: Please list any allergies you may have. Please type 'done' when you are finished."
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			result = "Employee number #{n}: is probably a vampire!."
			break 
		end
		if allergies == "done"
			break 
		end
	end

	puts result 
	employees -= 1 
	n += 1
end
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 

			
