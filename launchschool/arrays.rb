arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.include?(number)

# alternate solution
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last) # 1 arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last) # [1, 2, 3] arr = [["b"], ["a", [1, 2, 3]]]

arr = [["test", "hello", "world"],["example", "mem"]]
# incorrect: it doesn't output "example", it returns the whole array
# arr.each_with_index do |word, index|
#   if word == "example"
#     puts word
#   end
# end

arr.last.first
arr[1][0]
arr[-1][0] # also works

arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) # 3
arr.index[5] # error
arr[5] # 8

string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody' # correct error using names[3] = 'jody'


arr = [29, 27, 43, 25, 72, 58, 15, 10]
arr.each_with_index { |value, index| puts "value is #{value} and index is #{index}"}

original_array = [129, 127, 543, 725, 972, -58, 125, 310]
doubled_array = original_array.map { |x| x + 2 }
p original_array
p doubled_array