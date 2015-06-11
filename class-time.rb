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

  def initialize
  end

end

# Print stuff
kevin = Student.new("Kevin")

puts kevin.learn