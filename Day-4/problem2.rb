# There's no such thing as "points". Instead, scratchcards only cause you to win more scratchcards equal to the number of winning numbers you have.

# Specifically, you win copies of the scratchcards below the winning card equal to the number of matches. So, if card 10 were to have 5 matching numbers, you would win one copy each of cards 11, 12, 13, 14, and 15.

# Process all of the original and copied scratchcards until no more scratchcards are won. Including the original set of scratchcards, how many total scratchcards do you end up with?


# CREATE A HASH for every single line
hash = {}
x = File.read('file.txt').split("\n").count
(1..x).each do |key|
  hash[key] = 1
end


File.read('file.txt').split("\n").each do |line|
  splitted = line.split(/:|\|/)
  card = splitted.first.split(" ").last.to_i

  hash[card].times do
    winning_numbers = splitted[1].split(" ")
    list_numbers = splitted[2].split(" ")

    matches = 0
    winning_numbers.each do |number|
      matches+=1 if list_numbers.include?(number)
    end



  end


  # card = splitted.first.gsub("Card ")
  # p "card #{card}"
  # p "type #{card.class}"
end
