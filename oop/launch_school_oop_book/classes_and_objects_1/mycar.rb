class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
    end

    def speed_up(speed)
        @current_speed += speed
        puts "The car speeds up to #{@current_speed}"
    end

    def brake(speed)
        @current_speed -= speed
        puts "The car is slowing down to #{@current_speed}"
    end

    def current_speed
        puts "The car is now going #{@current_speed}"
    end

    def shut_off_car
        @current_speed = 0
        puts "Let's park this car"
    end

    def spray_paint(color)
        self.color = color
        puts "The car got painted the color #{color}"
    end
end

westy = MyCar.new('1991', 'White','Volkswagen')
puts westy.color
puts westy.year
westy.speed_up(10)
westy.current_speed
westy.speed_up(10)
westy.speed_up(10)
westy.current_speed
westy.brake(20)
westy.current_speed
westy.shut_off_car
westy.spray_paint('Sand')