file_path = 'file.txt'
sum = 0
regex = /\d|[[:alpha:]]+/
arr = []

# Open the file in read mode ('r')
# File.open(file_path, 'r') do |file|
#   # Read each line of the file and append it to the array
#   file.each_line do |line|
#     arr << line.chomp  # chomp removes the newline character
#   end
# end

arr = [
  "two1nine",
  "eightwothree",
  "abcone2threexyz",
  "xtwone3four",
  "4nineeightseven2",
  "zoneight234",
  "7pqrstsixteen"
]

arr.each do |word|
  n = []
  num = 0
  # p first_digit_or_number = word[/\d+|[[:alpha:]]+/]
  # p n[0] = word.scan(regex).first
  #  n[1] = word.scan(regex).last
  # num= n.join.to_i
  # sum += num
end


p sum
