class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
    puts 'El motor ha encendido!'
  end
end

class Car < Vehicle
  @@instances = 0

  def initialize
    @@instances += 1
  end

  def self.num_instances
    @@instances
  end
end

10.times do
  Car.new
end

puts Car.num_instances
Car.new.engine_start
