
class Vehicle

    attr_accessor :open_doors_count

    def initialize
        @open_doors_count = 0
    end
    
    def open_door
        
        raise Exception, "No more doors to open" if @open_doors_count >= doors_count

        @open_doors_count += 1
    end

    def close_door
        
        raise Exception, "No more doors to close" if @open_doors_count == 0

        @open_doors_count -= 1
    end

end

class PassengerCar < Vehicle

    def doors_count
        4
    end

end


class Coach < Vehicle

    def doors_count
        10
    end
end

p = PassengerCar.new
c = PassengerCar.new
p.open_door
p.close_door

6.times {|_v| c.open_door}

puts p.open_doors_count
puts c.open_doors_count
