# code here!

require 'pry'
class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    self.roster[grade] ||= []
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    students_alphabetized = {}
    # roster = {grade1: [student1, studen2], grade2: [student3, student4]}
    self.roster.each do |grade, student|
      students_alphabetized[grade] = student.sort
    end
      students_alphabetized
  end


end
