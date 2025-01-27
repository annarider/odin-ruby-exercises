# load './launchschool/basic-types.rb'

first_name = "Anna"
last_name = "Rider"
puts "#{first_name} #{last_name}"

number = 1439
thousands = number / 1000
puts thousands
hundreds = number / 100 % 10
puts hundreds
tens = number / 10 % 10
puts tens
ones = number % 10
puts ones

movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

# Iterate over each key and print them
movies.each_value { |year| puts year }

dates = [1975, 2004, 2013]
puts dates[0]
puts dates[1]
puts dates[2]

puts 5 * 4 * 3 * 2 * 1
puts 4 * 3 * 2 * 1
puts 3 * 2 * 1

puts 5.4 * 5.4
puts 4.3 * 4.3
puts 3.2 * 3.2