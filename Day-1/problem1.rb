require 'nokogiri'
require 'open-uri'

file_path = 'file.txt'

arr = []

# Open the file in read mode ('r')
File.open(file_path, 'r') do |file|
  # Read each line of the file and append it to the array
  file.each_line do |line|
    arr << line.chomp  # chomp removes the newline character
  end
end

# arr = ["1abc2",
#   "pqr3stu8vwx",
#   "a1b2c3d4e5f",
#   "treb7uchet"]

sum = 0

arr.each do |word|
  n = []
  num = 0
  first = true
  word.each_char do |letter|
    if letter.match?(/\d/) && (first == true)
      first = false
      n[0]= letter.to_i
      n[1]= letter.to_i
    elsif letter.match?(/\d/)
      n[1]= letter.to_i
    end
  end
  num= n.join.to_i
  sum += num
end


p sum
