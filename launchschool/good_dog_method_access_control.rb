class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  # assume the method definition below is above the "private" method

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.public_disclosure
puts sparky.human_years