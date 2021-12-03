require "./input"

module AoC
  extend self

  def three(input = AoC.input(3))
    lines = 0
    count_array = input.each_line.reduce(Array(Int32).new(input.each_line.first.size, 0)) do |arr, line|
      lines += 1
      line.each_char.each_with_index { |bit, i| arr[i] += 1 if bit == '1' }
      arr
    end
    gamma = count_array.map { |sum| sum >= lines // 2 ? 1 : 0 }.join
    epsilon = gamma.gsub({'1' => '0', '0' => '1'})
    gamma.to_i(2) * epsilon.to_i(2)
  end

  def three_b(input = AoC.input(3))
    bit_length = input.each_line.first.size
    generator_lines = input.lines
    scrubber_lines = generator_lines.dup
    (0...bit_length).each do |index|
      unless generator_lines.size == 1
        generator_bit = generator_lines.count do |line|
          line[index] == '1'
        end * 2 >= generator_lines.size ? '1' : '0'
        generator_lines.select! { |line| line[index] == generator_bit } 
      end

      unless scrubber_lines.size == 1
        scrubber_bit = scrubber_lines.count do |line|
          line[index] == '1'
        end * 2 < scrubber_lines.size ? '1' : '0'
        scrubber_lines.select! { |line| line[index] == scrubber_bit } 
      end
    end
    generator_lines.first.to_i(2) * scrubber_lines.first.to_i(2)
  end
end

{% skip_file if @top_level.has_constant? "Spec" %}

puts AoC.three
puts AoC.three_b
