#------------------------------------------------------------
# Checking occurrence of give number in give range of numbers
#------------------------------------------------------------

def is_validated
	if $start_num > $end_num 
		re_enter_number
	else
		return false	
	end	
end

def re_enter_number
	puts " Please Enter Correct Range End Number : "
	end_num = gets
	end_num = end_num.to_i
	$end_num = end_num
	is_validated
end


puts "==================================================================== "
puts " \t Most welcome to Ruby " + RUBY_VERSION + " language development \n"
puts "==================================================================== "
puts " Please Enter Range Starting Number : "
start_num = gets  # enter any value
start_num = start_num.to_i
$start_num = start_num
start_num_temp = start_num  
puts " Please Enter Range End Number : "
end_num = gets
end_num = end_num.to_i
$end_num = end_num
is_validated
puts " Please Enter For Which Occurrences Number : "
ornc_chk_num = gets
ornc_chk_num = ornc_chk_num.strip
ornc_num_arr = []
while(start_num <= end_num )
	ornc_num_arr << start_num if start_num.to_s.index(ornc_chk_num)
	if 	start_num.to_s.index(ornc_chk_num)
		please_skip = true
		start_num.to_s.split("").each do |num|
			ornc_num_arr << start_num if (num.to_s.index(ornc_chk_num) && !please_skip )
			if please_skip && ornc_chk_num == num
				please_skip = false
			end
		end
	end
	start_num +=1	
end
puts "====================================================================\n"
puts " ======== Occurence Checking For #{ornc_chk_num.to_s } Number  is #{ ornc_num_arr.size } Times Occured in #{ start_num_temp.to_s } to #{ end_num.to_s } ======="	
puts ornc_num_arr.join(", ").to_s
puts "====================================================================\n"

puts "\n==================================================================== "
puts "== This code is written by : Billu Yadav (billuyadav208@gmail.com) =="
puts "==================================================================== "


