family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
siblings = family.select { |key, value| (key == :sisters) || (key == :brothers)}
array_siblings = siblings.values.flatten
p array_siblings

clothes = {
  summer: "hat",
  winter: "boots",
  fall: "jumper"
}
shoes = {
  summer: "sandals",
  winter: "boots"
}
clothes.merge(shoes)
puts clothes

shirts = {
  summer: "t-shirt",
  winter: "sweater"
}
shirts2 = {
  summer: "sun shirt",
  winter: "jacket"
}
shirts.merge!(shirts2)
puts shirts

# solution
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}


puts family.keys
puts family.values 
family.select { |key, value| puts "#{value} is a #{key.chomp("s")}" }

# solution
puts family.each_key { |key| puts key}
puts family.each_value { |value| puts value}
family.each { |key, value| puts "#{value} is a #{key.to_s.chomp("s")}" }
family.each { |key, value| puts "#{value.join(" ")} are #{key}" }

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# solution
if opposites.value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

cat.values.select { |item| item == "whiskers" }

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"} # different key