class Instructor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    test_data = BoatingTest.all.find do |test|
                  test.student == student && test.test_name == test_name
                end
    if !test_data
      BoatingTest.new(student, test_name, test_status = "passed", self)
    else
      test_data.test_status = "passed"
    end
  end

  def fail_student(student, test_name)
    test_data = BoatingTest.all.find do |test|
                  test.student == student && test.test_name == test_name
                end
    if !test_data
      BoatingTest.new(student, test_name, test_status = "failed", self)
    else
      test_data.test_status = "failed"
    end
  end

end
