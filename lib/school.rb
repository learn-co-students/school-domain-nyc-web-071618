require 'pry'
# code here!
class School
  attr_reader :roster, :school

  def initialize(school)
    @school = school
    @roster = {} #has an empty roster when initialized
  end

  def add_student(student_name, grade)#adds a student
    if @roster[grade] != nil
      @roster[grade] << student_name #add multiple students to a class (grade)
    else
      @roster[grade] = [student_name] #adds students to different grades
    end
  end

  def grade(specific_grade) # retreives students from a grade
    @roster[specific_grade]
  end

  def sort # sorts the students
    # sorts grades
    grades = @roster.map do |grade, students|
      grade
    end

    sorted_grades = grades.sort

    #sorts students
    sorted_students = sorted_grades.map do |specific_grade|
      self.grade(specific_grade).sort
    end

    #constructs sorted class
    sorted_classes = {}
    counter = 0
    sorted_grades.each do |grade|
      sorted_classes[grade] = sorted_students[counter]
      counter += 1
    end
    sorted_classes
  end

end
