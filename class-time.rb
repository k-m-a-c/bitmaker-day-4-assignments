# Author: Kevin McLoughlin
#
# Fun n' games with Classes

# Define "student"
class Student

  def initialize(name)
    @name = name
  end

  def learn
    "I get it!"

  end

end

# Define "instructor"
class Instructor

  def initialize(name)
    @name = name
  end

  def teach
    "Everything in Ruby is an object, dontcha know."
  end

end

# Print stuff
kevin = Student.new("Kevin")
julie = Instructor.new("Julie")

puts julie.teach
puts kevin.learn