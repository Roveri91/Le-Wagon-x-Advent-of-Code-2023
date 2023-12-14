# The Elf leads you over to the pile of colorful cards. There, you discover dozens of scratchcards, all with their opaque covering already scratched off. Picking one up, it looks like each card has two lists of numbers separated by a vertical bar (|): a list of winning numbers and then a list of numbers you have. You organize the information into a table (your puzzle input).

# As far as the Elf has been able to figure out, you have to figure out which of the numbers you have appear in the list of winning numbers. The first match makes the card worth one point and each match after the first doubles the point value of that card.


line = "Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53"

splitted = line.split(/:|\|/)

winning_numbers = splitted[1].split(" ")
list_numbers = splitted[2].split(" ")

p "winning_number #{winning_numbers}"
p "list number #{list_numbers}"

count = 0
winning_numbers.each do |number|
  count+=1 if list_numbers.include?(number)
end

count *= 2 if count > 1
p "count #{count}"
