# This runner file will take the user object created below, get the permissions from
# user_permissions.json file and output it to a new customers.json file.
# Comments marked with * may require additional citations.

require('pp')
# Requires pretty-print

require_relative('user.rb')
# Requires the user.rb file
# The require_relative allows you to load a file that is relative to the file
# containing the require_relative statement. *So, in plain English - in the same
# directory.

user1 = User.new("Mohamed Khalid", "kal@example.com")
user2 = User.new("Ned Stark", "ned@stark.com")

pp user1
# Pretty print user1

user1.save
user2.save
# Using the save method to save to a new customers.json file