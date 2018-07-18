# code here!

class School

attr_accessor
attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade].push(name)
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do |key, array|
      new_hash[key] = array.sort!
    end
  end

end
