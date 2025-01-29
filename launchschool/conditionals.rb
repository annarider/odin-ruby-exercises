# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# Example 1
if x == 3
  puts "x is 3"
end

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

puts "x is 3" if x == 3

(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '847') # true
# !20 == 20 => false
# !true || false => false || 82 == 82  => true || false => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true 

def capitalize?(string)
  if string.length > 10 
    return string.upcase
  else return string
  end
end

puts "Give me a positive integer."
user_input = gets.chomp.to_i
if user_input >= 0 && user_input <= 50
  puts "number is between 0 and 50"
elsif user_input >= 51 && user_input <= 100
  puts "number is between 51 and 100"
else 
  puts "number is above 100" 
end

puts "Give me a number between 0 and 100."
number = gets.chomp.to_i

if number < 0 
  puts "No negative numbers please"
elsif number <= 50
  puts "#{number} is between 0 and 50" 
elsif number <= 100
  puts "#{number} is between 51 and 100" 
else
  puts "#{number} is above 100" 
end

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") # FALSE

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3) # 6 / 2 => 3 == 3 
  puts "Did you get it right?"
else
  puts "Did you?"
end
# Did you get it right? 

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y) # 11 <= 9 => false
  puts "Alright."
elsif (x + 1) >= (y) # 11 >= 9 => true
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# Alright now!


def equal_to_four(x)
if x == 4
  puts "yup"
else
  puts "nope"
end
end 
equal_to_four(5)

(32 * 4) >= "129" # 128 >= 129 => error
847 == '847' # false
'847' < '846' # false
'847' > '846' # true
'847' > '8478' # false
'847' < '8478' # true