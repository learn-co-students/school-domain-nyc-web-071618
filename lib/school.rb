class School
attr_accessor :roster

  def initialize(name)
    @school = name
    @roster={}
  end

  def school
    @school
  end

  def name
    @name
  end


def add_student(student, grade)
  @student = student
  @roster[grade] ||=[]
  @roster[grade] << @student
end

def grade(grade)
  @roster[grade]
end

def sort
  sorted_hash={}
  @roster.each do |grade, students|
    sorted_hash[grade]=students.sort
  end
  sorted_hash
end

end
