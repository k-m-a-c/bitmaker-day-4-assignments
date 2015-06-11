# Author: Chris McLoughlin
#
# Fun n' games with Classes

# Define "person"
class Person

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}."

  end

end

# Define "student"
class Student < Person

  def initialize(name)
    super
  end

  def learn
    "I get it!"

  end

end

# Define "instructor"
class Instructor < Person

  def initialize(name)
    super
  end

  def teach
    "Everything in Ruby is an object, dontcha know."
  end

end

# Make stuff
chris = Student.new("Chris")
christina = Instructor.new("Christina")

puts christina.greeting
puts chris.greeting

puts christina.teach
puts chris.learn