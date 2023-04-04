class Animal
    def initialize
    end
end

class Bear < Animal
    def initialize(color)
        super()
        @color = color
    end
end

class GoodDog < Animal
include Swimmable
include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors