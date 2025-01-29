x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# [1, 2, 3, 4, 5]

# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer == 'STOP'
    break
  end
end

# solution
x = ""
while x != "STOP"
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

def countdown(start)
  puts start
  if start > 0
    countdown(start - 1)
  end
end