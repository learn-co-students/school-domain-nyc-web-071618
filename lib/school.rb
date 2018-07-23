# code here!
class School
  attr_accessor :roster, :name, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

 def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end


