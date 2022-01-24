# rubocop:disable Style/OptionalBooleanParameter

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permision: true)
    @classroom = classroom
    super(age, name, parent_permision)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end


# rubocop:enable Style/OptionalBooleanParameter