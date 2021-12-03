require "./input"

module AoC
  extend self

  def zero
  end

  def zero_b
  end
end

{% skip_file if @top_level.has_constant? "Spec" %}

puts AoC.zero
puts AoC.zero_b
