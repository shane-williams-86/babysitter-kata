require "rspec"

class Babysitter
  def first_shift(end_time, start_time)
    first_shift = (end_time - start_time) * 12
  end

  def second_shift(end_time, start_time)
    second_shift = (end_time - start_time) * 8
  end

  def third_shift(end_time, start_time)
    third_shift = (end_time - start_time) * 16
  end
end

RSpec.describe Babysitter do
  describe "#first_shift" do
    it "should return first_shift rate" do
      bs = Babysitter.new
      expect(bs.first_shift(10, 5)).to eq(60)
    end
    it "should return first_shift rate" do
      bs = Babysitter.new
      expect(bs.first_shift(11, 6)).to eq(60)
    end
    it "should return first_shift rate" do
      bs = Babysitter.new
      expect(bs.first_shift(9, 5)).to eq(48)
    end
  end
  describe "#second_shift" do
    it "should return second_shift rate" do
      bs = Babysitter.new
      expect(bs.second_shift(12, 8)).to eq(32)
    end
    it "should return second_shift rate" do
      bs = Babysitter.new
      expect(bs.second_shift(12, 6)).to eq(48)
    end
    it "should return second_shift rate" do
      bs = Babysitter.new
      expect(bs.second_shift(12, 5)).to eq(56)
    end
  end
  describe "#third_shift" do
    it "should return third_shift rate" do
      bs = Babysitter.new
      expect(bs.third_shift(16, 8)).to eq(128)
    end
    it "should return third_shift rate" do
      bs = Babysitter.new
      expect(bs.third_shift(15, 6)).to eq(144)
    end
    it "should return third_shift rate" do
      bs = Babysitter.new
      expect(bs.third_shift(16, 12)).to eq(64)
    end
  end
end
