File.read("file.txt").split(/[-a-zA-Z:]+/).each do |arr|
  p arr
end
