def search_array(arr, int)
	new_arr = []
	arr.each do |number|
		new_arr << number 
		break if number ==  int
	end
	return new_arr.length - 1
end



p search_array([2,3,4,5], 3)


def fibonacci(int)
	if int > 1 
		arr = [0,1]
		(int -2).times do 
			arr << arr[-1] + arr[-2]
		end
		return arr 
	else 
		return [0]
	end
end


p fibonacci(6)[-1]


#even_last method will put all the even numbers at the beginning of
#the array and put odd numbers at the end of the array
#uses the unshift method to take the even numbers and to add them 
# to the beginning of a new array 
#returns new array

def even_last(arr)
	even_arr = []
	arr.each do |x|
		if x.even?
			even_arr.unshift(x)
		else 
			even_arr << x
		end
	end
	return even_arr
end

p even_last([7,4,3,2,2,8])












