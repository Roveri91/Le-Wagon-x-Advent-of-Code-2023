file_path = 'file.txt'
sum = 0
arr = []

# Open the file in read mode ('r')
File.open(file_path, 'r') do |file|
  # Read each line of the file and append it to the array
  file.each_line do |line|
    arr << line.chomp  # chomp removes the newline character
  end
end

def insert_digit(word)
  numbers = {'one' => 'o1e', 'two' => 't2o', 'three' => 't3e', 'four' => 'f4r',
  'five' => 'f5e', 'six' => 's6x', 'seven' => 's7n', 'eight' => 'e8t', 'nine' => 'n9e'}
  numbers.each { |number, digit| word.gsub!(number, digit) if word.include?(number) }
end

arr.each do |word|
  insert_digit(word)
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
  num = n.join.to_i
  sum += num
end
p sum
