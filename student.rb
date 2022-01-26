class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permision: true)
    @classroom = classroom
    super(age, name, parent_permision)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def clasroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
