file_path = 'file.txt'

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

regex = /\d|[[:alpha:]]+/
arr.each do |word|
  n = []
  num = 0
  word = word
  n[0] = word.find { |x| x.match?(regex) }
  n[1] = word.select { |x| x.match?(regex) }.last
  num= n.join.to_i
  sum += num
end


p sum
