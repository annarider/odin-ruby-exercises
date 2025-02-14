class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child...`"
  end

  def instance_of?
    p "I'm a fake instance"
  end
end

puts Parent.superclass       # => Object
child = Child.new
child.say_hi         # => "Hi from Child."

son = Child.new
son.say_hi

lad = Child.new
puts lad.instance_of? Child
puts lad.instance_of? Parent