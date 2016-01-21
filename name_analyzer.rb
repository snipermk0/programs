# This program will analyze your first and last name and output the
# length of your first and last name and also reverse your full name

puts ("Please enter your first name")
first_name = gets.chomp

puts ("Please enter your last name")
last_name = gets.chomp
# Get input from user for first name and last name. 

full_name = first_name + " " + last_name
# Store both first name and last name in a variable. 

puts ("Welcome #{first_name} #{last_name} to the ANALYZER")
# greeting message welcoming user to the ANALYZER

puts("The length of your first name is #{first_name.length} and 
last name is #{last_name.length}")
# output length of users first name and last name and let user know

puts("The reverse of your full name is #{full_name.reverse}")
# display the reverse of user's first name and last name



