class School
attr_accessor :school
attr_reader :roster

def initialize(school)
  @school = school
  @roster = {}
end

def add_student(name, grade)
  if @roster.key?(grade)
    @roster[grade] << name
  else
    @roster[grade] = [name]
end
end

def grade(grade)
@roster[grade]
end


def sort
  Hash[@roster.sort.map { |a,b| [a, b.sort] }]
# hash is creating a new hash we which will contain this info
#@roster will sort by keys and we will do each block of code for
# each iteration
# we will now take our keys and also sort them
end

end
