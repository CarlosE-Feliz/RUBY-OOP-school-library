# rubocop:disable Style/OptionalBooleanParameter

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown')
    @specialization = specialization
    super(name, age)
  end

  def can_use_service?
    true
  end
end

# rubocop:enable Style/OptionalBooleanParameter