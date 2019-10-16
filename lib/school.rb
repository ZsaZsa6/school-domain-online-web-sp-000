require "pry"
class School
  attr_accessor :roster, :grade, :name, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
  roster.each {|k, v| v[0] <=> v[1]}
    # binding.pry
  end
end
