require "./input"

module AoC
  extend self

  def two(input = AoC.input(2))
    horizontal, depth = 0, 0
    input.each_line do |line|
      split = line.split
      dir, units = split[0][0], split[1].to_i
      case dir
      when 'f' then horizontal += units
      when 'd' then depth += units
      when 'u' then depth -= units
      end
    end
    horizontal * depth
  end

  def two_b(input = AoC.input(2))
    aim, horizontal, depth = 0, 0, 0
    input.each_line do |line|
      split = line.split
      dir, units = split[0][0], split[1].to_i
      case dir
      when 'f'
        horizontal += units
        depth += aim * units
      when 'd' then aim += units
      when 'u' then aim -= units
      end
    end
    horizontal * depth
  end
end

{% skip_file if @top_level.has_constant? "Spec" %}

puts AoC.two
puts AoC.two_b
