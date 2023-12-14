# The Elf leads you over to the pile of colorful cards. There, you discover dozens of scratchcards, all with their opaque covering already scratched off. Picking one up, it looks like each card has two lists of numbers separated by a vertical bar (|): a list of winning numbers and then a list of numbers you have. You organize the information into a table (your puzzle input).

# As far as the Elf has been able to figure out, you have to figure out which of the numbers you have appear in the list of winning numbers. The first match makes the card worth one point and each match after the first doubles the point value of that card.

def calculate_score(matches)
  return 0 if matches == 0

  matches -=1

  score = 1

  matches.times do
    score *= 2
  end

  return score
end

total_score = 0

File.read('file.txt').split("\n").each do |line|
  splitted = line.split(/:|\|/)

  winning_numbers = splitted[1].split(" ")
  list_numbers = splitted[2].split(" ")

  matches = 0
  winning_numbers.each do |number|
    matches+=1 if list_numbers.include?(number)
  end

  score = calculate_score(matches)

  total_score += score

end

p "total is #{total_score}"
