# As you walk, the Elf shows you a small bag and some cubes which are either red, green, or blue. Each time you play this game, he will hide a secret number of cubes of each color in the bag, and your goal is to figure out information about the number of cubes.

# To get information, once a bag has been loaded with cubes, the Elf will reach into the bag, grab a handful of random cubes, show them to you, and then put them back in the bag. He'll do this a few times per game.

# You play several games and record the information from each game (your puzzle input). Each game is listed with its ID number (like the 11 in Game 11: ...) followed by a semicolon-separated list of subsets of cubes that were revealed from the bag (like 3 red, 5 green, 4 blue).

# The Elf would first like to know which games would have been possible if the bag contained only 12 red cubes, 13 green cubes, and 14 blue cubes?

sum = 0
bag_base = {
  "blue"  => 14,
  "green" => 13,
  "red"   => 12
}
File.foreach('file.txt') do |line|
  bag_draw = {}
  input = line.gsub(/,|;|:/, ' ').split
  id = input[1].to_i
  input.drop(2).reverse.each_slice(2) { |duo|
    if bag_draw.key?(duo.first)
      bag_draw[duo.first] = [bag_draw[duo.first], duo.last.to_i].max
    else
      bag_draw[duo.first] = duo.last.to_i
    end
  }
  b = 0
  bag_draw.each_key { |key| bag_draw[key] > bag_base[key] ? b += 1 : b += 0 }
  sum += id if b.zero?
end
p sum
