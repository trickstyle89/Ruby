class Person

    attr_accessor :name

    def initialize(name)
        @name=name
    end
    
end

p = Person.new('L. Ron')
p.name = "new name"
puts p.name
