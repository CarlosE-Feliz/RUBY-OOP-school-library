# create class person
require './corrector'
require './rental'
class Person < Corrector
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permision: true)
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @corrector = corrector.new
    @parent_permision = parent_permision
    super(age)
  end

  def can_use_services?
    of_age? || @parent_permision
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
