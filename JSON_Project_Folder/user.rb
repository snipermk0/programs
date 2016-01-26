# A JSON file in simpler terms is just a collection
# of JavaScript objects. The purpose of this program
# is literally to just read those JavaScript objects
# and convert them to Ruby hash key-value pairs.

require('json')
# Lets us to read from and write to a json file

class User
  attr_accessor :email, :name, :permissions
  def initialize (*args)
  # The splat operator (*) slurps up all the arguments
  # that is passed.

    @email = args[0]
    @name = args[1]
    @permissions = User.permissions
    # Class method that needs to call itself

  end

  def self.permissions
    permission_data = File.read ('user_permissions.json')
    # The File class has a read method that takes in one argument:
    # the file name as a string. This here read from the JSON file
    # and stores it in the variable file.

    permission_hash = JSON.parse(permission_data)
    # This will create a hash object from the file being parsed
    # A single line of code would be:
    # permission_hash = JSON.parse (File.read('user_permissions.json'))

  end

  def save
    # This method saves to a new customers.json file as a JSON object

    js_object = {email: @email, name: @name, permissions: @permissions}.to_json
    # The .to_json method converts the above hash to a JSON object

    File.open('customers.json', 'a') do |f1|
      f1.puts js_object
      # The File class has its own puts method. But, this one writes to the file
      # instead of printing to the screen.
    end
    # This loop creates a customers.json file (if it doesn't already exist) and
    # writes the js_object into it. The 'a' option means "append" mode.

  end

end
