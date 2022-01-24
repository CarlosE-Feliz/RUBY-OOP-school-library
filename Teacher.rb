class Teacher>Person
    def initialize(specialization, name = 'Unknown', age)
        @specialization = specialization
        super(name, age)
    end
    
    def can_use_service?
        true
    end
end