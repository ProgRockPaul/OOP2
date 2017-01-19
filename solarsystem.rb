class System

  attr_reader :bodies

  def initialize()
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    sum = 0
    @bodies.each {|x| sum = x.mass + sum}
    return sum
  end

end


class Body

  attr_reader :name
  attr_reader :mass
#
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

class Planet < Body

  attr_accessor :day
  attr_accessor :year


  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

# earth.day(1)
# earth.year(365)

class Star < Body

  attr_accessor :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

# sun.type("G-type")

class Moon < Body
  attr_accessor :month
  attr_accessor :planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end

universe = System.new
universe.total_mass

earth = Planet.new("Earth", 100, 24, 365)
universe.add(earth)
universe.total_mass # 100

sun = Star.new("Sun", 1000, "G-type")
universe.add(sun)
universe.total_mass

moon = Moon.new("Moon", 10, 27, earth)
universe.add(moon)
universe.total_mass
# moon.month(27)
# moon.planet("@Planet")
