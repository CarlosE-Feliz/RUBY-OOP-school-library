attr_accessor :label
attr_reader :students

class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  def add_students(student)
    @student << student
    student.classroom = self
  end
end
