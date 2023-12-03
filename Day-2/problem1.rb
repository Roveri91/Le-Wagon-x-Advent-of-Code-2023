games = []

# games = [
#   "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green",
# "Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue",
# "Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red",
# "Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red",
# "Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green"
# ]

file_path = 'file.txt'

# Open the file in read mode ('r')
File.open(file_path, 'r') do |file|
  # Read each line of the file and append it to the array
  file.each_line do |line|
    games << line.chomp  # chomp removes the newline character
  end
end

red = 12
green = 13
blue = 14


h = {}
games.each do |string|
  k = string.split(":")[0]
  k = k.split(" ")[1]
  # h[string.split(":")[0]] = string.split(":")[1]
  v = string.split(":")[1]
  h[k.to_i] = v
end

tot = 0

h.each do |key, value|
   counter = { "blue" => 0,
              "green" => 0,
              "red" => 0
            }

  x = value.split(/[,;]/)
  x.each do |y|
    v = y.split(" ")[0]
    k = y.split(" ")[1]
    counter[k] += v.to_i
  end



  if ((counter["blue"] <= blue) && (counter["green"] <= green) && (counter["red"] <= red) )
    tot += key
    p key
  end
end

p tot
