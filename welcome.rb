#------------------------------------------------------------
# Getting user name and printing user name
#------------------------------------------------------------
def is_validated
	if $user_name.size <= 1  #string have \n 
		re_enter_name
	else
		return true;	
	end	
end
def re_enter_name
	puts " Please Enter Your Name : " 
	$user_name = gets
	is_validated
end

#------------------- Program starts here --------------------------

puts "==================================================================== "
puts " \t Most welcome to Ruby " + RUBY_VERSION + " language development \n"
puts "==================================================================== "
puts " Please Enter Your Name : "
$user_name = gets  # we store user name in globle variable

if is_validated
	puts "==================================================================== "
	puts " \t Most welcome : " + $user_name.to_s
	puts "==================================================================== "

end

puts "\n==================================================================== "
puts "== This code is written by : Billu Yadav (billuyadav208@gmail.com) =="
puts "==================================================================== "

