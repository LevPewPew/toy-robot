module ToyRobot
  class Table
    attr_reader :width, :height

    def initialize(width = 5, height = 5)
      @width = width
      @height = height
    end

    def valid_position?(east, north)
      if east >= 0 && east <= 5 && north >= 0 && north <= 5
        return true
      else
        return false
      end
    end
  end
end