module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end


puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
p fido.speak                  # => I'm an animal, and I speak!
puts fido.walk

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

# sparky = Dog.new
# neemo  = Fish.new
# paws   = Cat.new

# sparky.swim                 # => I'm swimming!
# neemo.swim                  # => I'm swimming!
# paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>
