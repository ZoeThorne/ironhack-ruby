class Engine
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts @noise
  end
end

class Car
  def initialize(noise, engine)
    @engine = engine
    @noise = noise
  end

  def make_noise
    @engine.make_noise
    puts @noise
  end
end

require "pry"


noisy_engine = Engine.new("PSSSSSH")
better_engine = Engine.new("...")

noisy_car = Car.new("broom", noisy_engine)
better_car = Car.new("broom", better_engine)

binding.pry