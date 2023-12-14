File.read('file.txt').split("\n").each do |line|
  splitted = line.split(/:|\|/)
  card = splitted.first.split(" ").last.to_i
  # card = splitted.first.gsub("Card ")
  p "card #{card}"
  p "type #{card.class}"
end

hash = {}

(1..215).each do |key|
  hash[key] = 1
end
