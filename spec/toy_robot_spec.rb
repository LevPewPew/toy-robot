RSpec.describe ToyRobot::Robot do
  describe "#move_north" do
    it "moves one space north" do
      # implicit, 
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
  
  describe "#turn_left" do
    context "when facing north" do
      it "faces west" do
        subject.turn_left
        expect(subject.facing).to eq(:west)
      end
    end
    
    context "when facing east" do
      it "faces north" do
        subject.turn_left
        expect(subject.facing).to eq(:north)
      end
    end

    context "when facing south" do
      it "faces east" do
        subject.turn_left
        expect(subject.facing).to eq(:east)
      end
    end

    context "when facing west" do
      it "faces south" do
        subject.turn_left
        expect(subject.facing).to eq(:south)
      end
    end
  end
  
  describe "#turn_right" do
    it "faces east" do
      subject.turn_right
      expect(subject.facing).to eq(:east)
    end
  end

  describe "#move" do
    it "moves in a direction and faces that direction" do
      subject.move(:north)
      expect(subject.facing).to eq(:north)
      expect(subject.north).to eq(1)
      expect(subject.east).to eq(0)
    end
  end

end
