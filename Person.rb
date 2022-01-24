class Person
    attr_reader :id
    attr_accessor :name, :age
    def initialize(parent_permision: true, name = "Unknown", age)
      @id = Random.rand(1..10_000)
      @name = name
      @age = age
      @parent_permision = parent_permision
    end

    def can_use_services? 
        is_of_age? || @parent_permision
    end

    private

    def is_of_age? 
      @age >= 18
    end

end