module MyModule
  def method(argument)
    puts argument
  end
end

class MyClass
  include MyModule
end

object = MyClass.new

