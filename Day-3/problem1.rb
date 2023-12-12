# The engine schematic (your puzzle input) consists of a visual representation of the engine. There are lots of numbers and symbols you don't really understand, but apparently any number adjacent to a symbol, even diagonally, is a "part number" and should be included in your sum. (Periods (.) do not count as a symbol.)

input = File.read("input3.txt")

numbers = []
parts = []

lines = input.split
lines.each_with_index do |line, y|
  number = nil

  line.chars.each_with_index do |char, x|
    if char =~ /\d/
      if number
        number[0] += char
      else
        number = [char, x, y]
      end
    else
      parts << [char, x, y] if char != "."

      if number
        numbers << number
        number = nil
      end
    end
  end

  numbers << number if number
end

part_numbers = numbers.select do |number, x, y|
  x_range = [x - 1, 0].max..[x + number.length, lines[0].length - 1].min
  y_range = [y - 1, 0].max..[y + 1, numbers.size - 1].min

  parts.any? { |_, px, py| x_range.cover?(px) && y_range.cover?(py) }
end

p part_numbers.map(&:first).sum(&:to_i)
