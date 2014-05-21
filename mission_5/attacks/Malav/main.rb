require "csv"
require "./active_record/Base"
include ActiveRecord
require "./City"
require "./State"
require "./Country"

# Fetch all records.
puts Country.all.count == 2 # Returns array of all countries.
puts State.all.count == 4   # Returns array of all states.
puts City.all.count == 8    # Returns array of all cities.

# Find by attribute name.
country = Country.find_by name: 'india' # Country object.
puts country.name == "india"
country = Country.find_by id: 2         # Country object.
puts country.name == "pakistan"
state = State.find_by name: 'gujarat'   # State object.
puts state.name == "gujarat"
state = State.find_by id: 2             # State object.
puts state.name == "maharashtra"
city = City.find_by name: 'bharuch'     # City object.
puts city.name == "bharuch"
city = City.find_by id: 4               # City object.
puts city.name == "pune"


# Find using id.
country = Country.find(2)
puts country.name == "pakistan"
state = State.find(3)
puts state.name == "punjab"
city = City.find(4)
puts city.name == "pune"

=begin
# has_many
puts Country.find(1).states.count == 2
puts Country.find(1).cities.count == 4
puts State.find(1).cities.count == 2

# belongs_to
country = State.find(1).country
puts country.name == "india"
state = City.find(1).state
puts state.name == "gujarat"
country = City.find(1).country
puts country.name == "india"
=end