# code here!

class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade] == nil 
     @roster[grade] = []
   end
    @roster[grade] << name
  end
  
  def grade(grade_val)
    @roster[grade_val]
  end
  
  def sort()
    @roster.each{|grade, students|
      students.sort!
    }
  end
end

school = School.new("Bayside High School")

