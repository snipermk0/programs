# This program will display a list of cities in the database and prompt
# the user to enter a city name and returns the city's area code.

dial_book = {
  "New York City" => 212,
  "Winnipeg" => 204,
  "Toronto"  => 416,
  "Dallas" => 214,
  "Miami" => 305,
  "Madison" => 608,
  "Portland" => 541,
  "Calgary" => 403,
  "Victoria" => 604,
  "Montreal" => 450
  }

# codeFinder takes a city name and the dial_book dictionary as parameters
# to return search results
def codeFinder (city_name, areacodes)
  search = areacodes[city_name]
  return search
end

#displayCity simply displays a list of all available cities in the database
def displayCity(areacodes)
  puts "We have the following cities in our dial book:"
  areacodes.each{|k,v| puts k}
end

loop do                  # infinite loop
  puts "Do you want to search for an area code? (Y/N)"
  answer = gets.chomp.upcase
  if answer != "Y"       # if anything else other than Y is entered,
    break                # the loop terminates and exits the program.
  end
  displayCity(dial_book) # displays all the city names
  puts "Enter the name of the city you want the areacode for: "
  prompt = gets.chomp.capitalize
  if dial_book.include?(prompt)    # checking to see if a valid selection is entered
    puts "Valid selection, the area code for #{prompt} is #{codeFinder(prompt, dial_book)}"
  else
  puts "Invalid selection. You entered a city name not in our dial book."
  end
end

