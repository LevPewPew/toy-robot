module ToyRobot
  class Robot
    attr_reader :north, :east, :facing

    def initialize(north = 0, east = 0, facing = "north")
      @north = north
      @east = east
      @facing = facing
    end

    def move_north
      @north += 1
    end

    def move_east
      @east += 1
    end

    def move_south
      @north -= 1
    end

    def move_west
      @east -= 1
    end

    def turn_left
      @facing = case @facing
      when :north then :west
      when :east then :north
      when :south then :east
      when :west then :south
      end
    end

    def turn_right
      @facing = case @facing
      when :north then :east
      when :east then :south
      when :south then :west
      when :west then :north
      end
    end

    # move 1 unit forward in the direction it is facing
    def move
      send("move_#{@facing}")
    end

  end
end
