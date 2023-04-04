
class MyCar

    attr_accessor :year, :model, :color

def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"

end

    def initialize(y, m, c)
        @year = y
        @model = m
        @color = c
    end
    
    def honk
        puts "#{color} #{model} honks. "
    end

    def change_info(y, m ,c)
        self.year = y
        self.model = m
        self.color = c
    end

def to_s
    "My vehicle is a #{color}, #{year}, #{model}."

end

end

VanLife = MyCar.new("2003", "Sprinter", "White")
puts VanLife.honk
puts VanLife.color
puts VanLife.model
VanLife.change_info("2022", "Transit", "Black")
puts VanLife.honk

MyCar.gas_mileage(12, 144)

my_car = MyCar.new("2010", "focus", "silver")
puts my_car