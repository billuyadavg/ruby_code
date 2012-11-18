#------------------------------------------------------------
# Getting number and printing all prime numbers less then that number
#------------------------------------------------------------

puts "==================================================================== "
puts " \t Most welcome to Ruby " + RUBY_VERSION + " language development \n"
puts "==================================================================== "
puts " Please Enter Any Number To Check Prime Numbers : "
num = gets  # enter any value
num = num.to_i

$prime_num_arr = [1,2]

def prime(num)
	while(num >= 3)
		prime_chk_num = 2
		while(prime_chk_num <= num)
			if (num % prime_chk_num) == 0
				break			
			end
			prime_chk_num +=1
		end
		if prime_chk_num == num 
			$prime_num_arr << num
		end 
		num -=1
	end
end

if !(num%2 == 0 && num != 2)
	prime(num)
	is_prime = true	
end

puts "====================================================================\n"
if is_prime
	correct_prime_nums = $prime_num_arr.compact.uniq.collect{ |p| p if p <= num } 
	result = correct_prime_nums.include?(num) ? "Prime Number" : "Not Prime Number"
	puts "==================== Your Number is " + result.to_s	+ " =================== \n"
	puts "==================== #{correct_prime_nums.compact.uniq.size.to_s } Prime Numbers upto #{num} \t ===================\n " + correct_prime_nums.compact.sort.join(", ").to_s
else
	puts " ======== Ented Number Is Even, so we not need to check it as prime number ======="	
end
puts "====================================================================\n"

puts "\n==================================================================== "
puts "== This code is written by : Billu Yadav (billuyadav208@gmail.com) =="
puts "==================================================================== "


