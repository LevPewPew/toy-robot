RSpec.describe ToyRobot::Robot do
  describe "#move_north" do
    it "moves one space north" do
      # it is implicit from rspec magic that,
      # subject = ToyRobot::Robot.new
      subject.move_north
      expect(subject.north).to eq(1)
      expect(subject.east).to eq(0)
    end
  end

  describe "#move_east" do
    it "moves one space east" do
      subject.move_east
      expect(subject.north).to eq(0)
      expect(subject.east).to eq(1)
    end
  end

  describe "#move_south" do
    it "moves one space south" do
      subject.move_south
      expect(subject.north).to eq(-1)
      expect(subject.east).to eq(0)
    end
  end

  describe "#move_west" do
    it "moves one space west" do
      subject.move_west
      expect(subject.north).to eq(0)
      expect(subject.east).to eq(-1)
    end
  end
  
  # TODO redo this to have hash arguments, i.e. unorderded
  describe "#turn_left" do
    context "when facing north" do
      subject = ToyRobot::Robot.new(0, 0, :north)

      it "faces west" do
        subject.turn_left
        expect(subject.facing).to eq(:west)
      end
    end

    context "when facing east" do
      subject = ToyRobot::Robot.new(0, 0, :east)

      it "faces north" do
        subject.turn_left
        expect(subject.facing).to eq(:north)
      end
    end

    context "when facing south" do
      subject = ToyRobot::Robot.new(0, 0, :south)

      it "faces east" do
        subject.turn_left
        expect(subject.facing).to eq(:east)
      end
    end

    context "when facing west" do
      subject = ToyRobot::Robot.new(0, 0, :west)

      it "faces south" do
        subject.turn_left
        expect(subject.facing).to eq(:south)
      end
    end
  end

  describe "#turn_right" do
    context "when facing north" do
      subject = ToyRobot::Robot.new(0, 0, :north)

      it "faces east" do
        subject.turn_right
        expect(subject.facing).to eq(:east)
      end
    end

    context "when facing east" do
      subject = ToyRobot::Robot.new(0, 0, :east)

      it "faces south" do
        subject.turn_right
        expect(subject.facing).to eq(:south)
      end
    end

    context "when facing south" do
      subject = ToyRobot::Robot.new(0, 0, :south)

      it "faces west" do
        subject.turn_right
        expect(subject.facing).to eq(:west)
      end
    end

    context "when facing west" do
      subject = ToyRobot::Robot.new(0, 0, :west)

      it "faces north" do
        subject.turn_right
        expect(subject.facing).to eq(:north)
      end
    end
  end

  describe "#move" do
    context "facing north" do
      subject = ToyRobot::Robot.new(2, 2, :north)

      it "moves one space north" do
        subject.move
        expect(subject.facing).to eq(:north)
        expect(subject.north).to eq(3)
        expect(subject.east).to eq(2)
      end
    end

    context "facing east" do
      subject = ToyRobot::Robot.new(2, 2, :east)

      it "moves one space east" do
        subject.move
        expect(subject.facing).to eq(:east)
        expect(subject.north).to eq(2)
        expect(subject.east).to eq(3)
      end
    end

    context "facing south" do
      subject = ToyRobot::Robot.new(2, 2, :south)

      it "moves one space south" do
        subject.move
        expect(subject.facing).to eq(:south)
        expect(subject.north).to eq(1)
        expect(subject.east).to eq(2)
      end
    end

    context "facing west" do
      subject = ToyRobot::Robot.new(2, 2, :west)

      it "moves one space west" do
        subject.move
        expect(subject.facing).to eq(:west)
        expect(subject.north).to eq(2)
        expect(subject.east).to eq(1)
      end
    end
  end
end
