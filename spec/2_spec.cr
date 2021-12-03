require "./spec_helper"

describe "AoC" do
  input = <<-INPUT
  forward 5
  down 5
  forward 8
  up 3
  down 8
  forward 2
  INPUT

  describe "two" do
    it "passes example" do
      AoC.two(input).should eq 150
    end
  end

  describe "two_b" do
    it "passes example" do
      AoC.two_b(input).should eq 900
    end
  end
end
