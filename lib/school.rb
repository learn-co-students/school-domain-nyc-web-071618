require "pry"

class School

attr_accessor :name, :roster

def initialize(name)
  @name = name
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
  test_var = @roster.each do |grade, class_roster|
    @roster[grade] = class_roster.sort!
  end
end

end

my_school = School.new("whatever")
my_school.add_student("joe", 3)
my_school.add_student("dave", 3)
my_school.sort
