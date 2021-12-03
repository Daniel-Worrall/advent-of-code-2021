require "./spec_helper"

describe "AoC" do
  one_input = <<-INPUT
  199
  200
  208
  210
  200
  207
  240
  269
  260
  263
  INPUT

  describe "one" do
    it "passes example" do
      AoC.one(one_input).should eq 7
    end
  end

  describe "one_b" do
    it "passes example" do
      AoC.one_b(one_input).should eq 5
    end
  end
end
