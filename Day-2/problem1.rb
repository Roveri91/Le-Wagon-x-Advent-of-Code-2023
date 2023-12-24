
sum = 0
bag_base = {
  "blue"  => 14,
  "green" => 13,
  "red"   => 12
}
File.foreach('file.txt') do |line|
  bag_draw = {}
  input = line.gsub(/,|;|:/, ' ').split
  id = input[1].to_i
  input.drop(2).reverse.each_slice(2) { |duo|
    if bag_draw.key?(duo.first)
      bag_draw[duo.first] = [bag_draw[duo.first], duo.last.to_i].max
    else
      bag_draw[duo.first] = duo.last.to_i
    end
  }
  b = 0
  bag_draw.each_key { |key| bag_draw[key] > bag_base[key] ? b += 1 : b += 0 }
  sum += id if b.zero?
end
p sum
