class Engine
  def start
    puts "Engine starting..."
  end
end

class Passenger
end

class Car
  def initialize (passengers)
    @engine = Engine.new  # Engine instance is created when Car is created
    @passengers = passengers
  end
end