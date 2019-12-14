class Car
    def initialize(model, year)
        @model = model
        @year = year
        @wheels_count = 4
        @lights = 'off'
        @signals = 'off'
        @speed = 0
    end

        def wheels
            @wheels_count
        end

        def lights
            @lights
        end

        def signals
            @signals
        end

        def speed
            @speed
        end

        def year
            @year
        end

        def get_model
            @get_model
        end

    def describe
        "My car is a #{@model} #{@year}and#{@wheels_count} wheels"
    end
end

my_car = Car.new('toyota', '2007')
my_car_year = Car.new('toyota', 2006)

puts my_car.describe
puts my_car_year.describe
puts my_car.to_s


class Tesla < Car
        def initialize(model, year)
            super
        end

        def accelaration
         @speed += 10
        end

        def deceleration
        @speed -= 7
        end

        def to_s
            "My car is a #{@model}
            #{@year} and #{@wheels_count} wheels"
        end
end
class Toyota < Car
        def initialize(model, year)
            super
        end

        def accelaration
            @speed+=7
        end

        def deceleration
            @speed -=7
        end
end

class Honda < Car
    def initialize(model, year)
        super
    end

    def accelaration
        @speed+= 5
    end

    def deceleration
        @speed -= 2
    end
end

my_tesla = Tesla.new('tesla1', 2019)
my_tesla2 = Tesla.new('tesla2', 2018)
my_tesla3 = Tesla.new('tesla3', 2017)


p newArray = [my_tesla, my_tesla2, my_tesla3]

puts 'our Tesla year'
newArray.sort! {|a,b| a.year<=>b.year}

puts newArray

puts 'our tesla model'
newArray.sort! {|a,b| a.get_model<=>b.get_model}

puts newArray
