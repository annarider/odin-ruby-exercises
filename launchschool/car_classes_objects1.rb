class Car
  attr_accessor :model, :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(speed)
    @current_speed += speed
    puts "You're speeding up to #{speed} mph"
  end

  def brake(speed)
    @current_speed -= speed
    puts "You're slowing down to #{speed} mph"
  end

  def current_speed
    puts "You're going at #{@current_speed} mph"
  end

  def shut_off
    @current_speed = 0
    puts "You're stopped or parked"
  end

  def spray_paint(color)
    self.color = color
    puts "New car color is #{color}"
  end

  def self.calculate_gas_mileage(miles, gallons)
    puts "#{miles / gallons} miles per gallon of gas" 
  end

  def to_s
    "This #{color} car is a #{model} from year, #{year}"
  end
end

my_car = Car.new(2012, "silver", "sonata")
my_car.speed_up(20)
my_car.current_speed
my_car.speed_up(20)
my_car.current_speed
my_car.brake(30)
my_car.current_speed
my_car.brake(10)
my_car.current_speed
my_car.shut_off
my_car.current_speed

puts my_car.color
puts my_car.year
my_car.color = "black"
puts my_car.color

my_car.spray_paint("purple")
puts my_car.color

Car.calculate_gas_mileage(360, 16)

puts my_car