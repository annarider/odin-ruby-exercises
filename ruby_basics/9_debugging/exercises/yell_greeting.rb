require 'pry-byebug'

def yell_greeting(string)
  name = string

  #debugger
  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")
