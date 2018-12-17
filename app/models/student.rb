require 'pry'
class Student

  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instuctor)
    BoatingTest.new(self, test_name, test_status, instuctor)
  end

  def self.find_student(first_name)
    self.all.select {|student| student.first_name ==  first_name}
  end

  def student_tests
    BoatingTest.all.select { |test| test.student == self }
  end

  def grade_percentage
    passed_tests = student_tests.select {|test| test.test_status == "passed"}
    grade = passed_tests.length.to_f/student_tests.length.to_f
    return grade.to_f * 100
  end

end
