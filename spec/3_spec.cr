require "./spec_helper"

describe "AoC" do
  input = <<-INPUT
  00100
  11110
  10110
  10111
  10101
  01111
  00111
  11100
  10000
  11001
  00010
  01010
  INPUT

  describe "three" do
    it "passes example" do
      AoC.three(input).should eq 198
    end
  end

  describe "three_b" do
    it "passes example" do
      AoC.three_b(input).should eq 230
    end
  end
end
