def greeting(name)
  "Hello, #{name}"
end

1. x = 2 # 2

2. puts x = 2 # nil

3. p name = "Joe" # "Joe"

4. four = "four" # "four"

5. print something = "nothing" # nil

def multiply(a, b)
  a * b
end

puts multiply(4, 8)

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee") # It doesn't print. Returns nil

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee") # prints out Yippeee!!!!.
# still returns nil

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
  # expected 2 arguments and received 1