require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end #end initialize method

  def add_student(student, grade)
    if roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
    @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value| value.sort!
    end
  end

end #end School class#
