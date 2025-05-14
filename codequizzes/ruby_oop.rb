# https://www.codequizzes.com/ruby/beginner/intro-object-oriented-programming

x = String.new("i wish i was surfing")
# =>i wish i was surfing

# "i thought he said this wasn't going to be abstract..."
y = String.new("i thought he said this wasn't going to be abstract...")

"hi".methods() # names of all methods string object has

"hello".upcase() # => HELLO

"sUp DuDe".swapcase() # => "SuP dUdE"

"This is a sentence, kinda".split() # => ["This", "is", "a", "sentence,", "kinda"]

object.method()

String.new("road trip")

Array.new() # => []

my_array = Array.new()
my_array.push("nice")
my_array.push("hair")
puts my_array.inspect
# => ["nice", "hair"]

What is a class? # object with attributes and methods to define a collection of state and behaviors
What is an object. # Thing in memory. An object is an instance of a class. Objects have methods that can be called to make the object do stuff. 
  
How is a String object created? # initialized with String.new() method. The initialize method creates a new object

Create a new Hash object. # Hash.new()

my_array2 = Array.new()
my_array2.push(String.new("fun"))
my_array2.push(String.new("games"))
puts my_array2.inspect

my_string = String.new("special")
my_string.push("cool") # => error

a_string = String.new("ear")
a_string.class() # String

an_array = Array.new()
an_array.class() # Array

class Animal
end

fido = Animal.new()

class Dog
  def speak()
    return("ruff ruff")
  end
end

spot = Dog.new()
puts spot.speak()

class Penguin
  def looks()
    return(String.new("We are cute!"))
  end
end

penny = Penguin.new()
puts penny.looks()

class Fish
  def self.general_overview()
    return("Fish are animals that live in the sea")
  end
end

puts Fish.general_overview()

# Define a Calculator class with an add() class method. Demonstrate how the add() method can be called to add two numbers.

class Calculator
  def add(x, y)
    x + y
  end
end

calculator = Calculator.new()
puts calculator.add(4, 5)

# answer:
class Calculator
  def self.add(x, y)
    return(x + y)
  end
end

puts Calculator.add(3, 4)
# Claude: In this simple addition example, a class method makes more sense because you don't need to maintain any state.
# You're just performing a simple calculation. It's more efficient since you don't need to create an instance first.
 
class Person # Class name
  def initialize(name) # init method with parameter
    @name = name # assign instance variable the value from argument
  end
end

# answer: initialize() # a special method that is run when Person.new() is executed.  
# @name # an instance variable that is used to maintain state in a Ruby class.  
#   The @name instance variable can be used by instance methods throughout the Person class and this is a powerful object oriented programming technique.

class Person
  def initialize(name)
    @name = name
  end
end

my_person_object = Person.new("Fred")

# Instantiated by calling new() which runs the initialize method and returns a new Person object saved in the my_person_object variable
# Answer: The new() method was called on the Person class with the argument "Fred". 
#   The new() method automatically calls the initialize() method and passes the "Fred" argument to the initialize() method. 
#   The body of the initialize() method sets @name = "Fred". @name is a variable, but is a special type of variable called 
#   an instance variable that is used to retain state of the object. The @name instance variable can be used by the instance methods in the Person class, which is incredibly useful.

class Lion
  def initialize(name)
    @name = name
  end

  def return_lions_name
    return(@name)
  end
end

simba = Lion.new("Simba")
puts simba.return_lions_name() # prints "Simba"

# Create a new instance of Lion in the object simba.
# instance variable name is assigned the value Simba
# simba has access to an instance method which gives us  
# the name Simba
# Answer: The return_lions_name() method simply returns the value that is stored in the @name instance variable. The @name instance variable is accessible by all instance methods in the Lion class and return_lions_name() is an instance method of the Lion class. 
# An instance method that returns the value of the @name instance method is typically called name(), so here is how the class looks when following Ruby conventions. 

# Create a Celsius class that is initialized with temperature.
# Add a method to_fahrenheit() to the Celsius class that converts the Celsius temperature to Fahrenheit. The formula to convert Celsius to Fahrenheit is the temperature in Celsius times 1.8 plus 32.
class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit()
    @temperature * 1.8 + 32
  end
end

# Answer: 
class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit()
    return(@temperature * 1.8 + 32)
  end
end

celsius = Celsius.new(10)
puts celsius.to_fahrenheit()