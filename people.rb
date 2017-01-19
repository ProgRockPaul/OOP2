class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{ @name }"
  end

end
christina = Person.new("Chirstina")
chris = Person.new("Chris")


class Student < Person

  def learn
    puts "I get it!"
  end
end
christina = Student.new(@learn)
christina.greeting
christina.learn

class Instructor < Person

  def teach
    puts "Everything in Ruby is an object."
  end
end
chris = Instructor.new(@teach)
chris.greeting
chris.teach

# Basically I had to create a new instructor and assign it to the method @teach because the method was not defined locally.
