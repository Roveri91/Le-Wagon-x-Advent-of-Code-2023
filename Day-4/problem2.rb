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

  # get current card ID
  splitted = line.split(/:|\|/)
  current_card = splitted.first.split(" ").last.to_i


  # get winning number and list number for each card
  winning_numbers = splitted[1].split(" ")
  list_numbers = splitted[2].split(" ")

  # find the matches checking if the winning number is included in the list number
  matches = 0
  winning_numbers.each do |number|
    matches+=1 if list_numbers.include?(number)
  end

  # if there is at least one match for this card
  if matches > 0
    # from the next card to the (number of matches)'s card
    (1..matches).each do |index|
      # check if we didn't go to far
      if hash.has_key?(current_card+index)
        # increment the number of copy
        hash[current_card+index] += hash[current_card]
      end
    end
  end

end

# print the sum of al hash's values
p sum_of_values = hash.values.sum
