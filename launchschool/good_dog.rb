class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
    puts "The object was initialized!"
  end

  def speak
    "#{self.name} says Arf!"
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name
puts sparky.info
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

fido = GoodDog.new("Fido", "", "")
puts fido.speak             # => Arf!