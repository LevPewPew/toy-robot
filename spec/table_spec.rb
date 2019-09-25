RSpec.describe ToyRobot::Table do
  describe "#valid_position?" do
    it "is true if within bounds of table" do
      expect(subject.valid_position?(0, 0)).to eq(true)
    end

    it "is trueif within bounds of table" do
      expect(subject.valid_position?(5, 5)).to eq(true)
    end

    it "is false if north is 6" do
      expect(subject.valid_position?(0, 6)).to eq(false)
    end

    it "is false if east is 6" do
      expect(subject.valid_position?(6, 0)).to eq(false)
    end

    it "is false if east is -1" do
      expect(subject.valid_position?(-1, 0)).to eq(false)
    end

    it "is false if east is -1" do
      expect(subject.valid_position?(0, -1)).to eq(false)
    end
  end
end

# RSpec.describe ToyRobot::Table do
#   describe "#valid_position?" do
#     it "is true" do
#       expect(subject.valid_position?(0, 0)).to eq(true)
#     end

#     it "is false if east is 6" do
#       expect(subject.valid_position?(6, 0)).to eq(false)
#     end

#     it "is false if north is 6" do
#       expect(subject.valid_position?(0, 6)).to eq(false)
#     end
#   end
# end