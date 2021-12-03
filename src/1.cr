require "./input"

module AoC
  extend self

  def one
    AoC.input(1).each_line.map(&.to_i).cons_pair.select { |l, r| l < r }.size
  end

  def one_b
    AoC.input(1).each_line.map(&.to_i).cons(3, true).map(&.sum).cons_pair.select { |l, r| l < r }.size
  end
end

{% skip_file if @top_level.has_constant? "Spec" %}

puts AoC.one
puts AoC.one_b
