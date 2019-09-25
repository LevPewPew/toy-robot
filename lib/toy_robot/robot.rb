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
      case @facing
      when :north
        @facing = :west
      when :east
        @facing = :north
      when :south
        @facing = :east
      when :west
        @facing = :south
      end

      @facing = case @facing
      when :north then :west
      when :east
        @facing = :north
      when :south
        @facing = :east
      when :west
        @facing = :south
      end
    end

    def turn_right
      case @facing
      when :north
        @facing = :east
      when :east
        @facing = :south
      when :south
        @facing = :west
      when :west
        @facing = :north
      end
    end

    def move(direction)
      case direction
      when :north
        @facing = :east
      when :east
        @facing = :south
      when :south
        @facing = :west
      when :west
        @facing = :north
      end
    end

  end

  class Table
    def initialize
      
    end
  end
end
