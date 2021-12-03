require "./input"

module AoC
  extend self

  def zero(input = AoC.input(0))
  end

  def zero_b(input = AoC.input(0))
  end
end

{% skip_file if @top_level.has_constant? "Spec" %}

puts AoC.zero
puts AoC.zero_b
