# code here!
class School
attr_accessor :roster
attr_reader :school


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.map do |grade, grade_array|
      grade_array.sort!
    end
    @roster
  end
end
