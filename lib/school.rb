# code here!
class School
  attr_accessor :schoolname, :roster

  def initialize(schoolname)
    @schoolname = schoolname
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster[grade].class == Array
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort = {}
    roster.each { |key, value|
      sort[key] = value.sort
    }
    sort
  end
end

