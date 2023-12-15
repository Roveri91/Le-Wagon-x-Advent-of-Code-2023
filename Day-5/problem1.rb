data = File.read("file.txt").split(/[-a-zA-Z:]+/).reject(&:empty?)

seeds = data.first
seed_to_soils = data[2]
soil_to_fertilizer = data[4]
fertilizer_to_water = data[6]
water_to_light = data[8]
light_to_temperature = data[10]
temperature_to_humidity = data[12]
humidity_to_location = data[14]


def craete_hash(data)
  hash = {}
  data.split("\n").each do |line|
    # p "line -> #{line}" unless line.empty?
    unless line.empty?
      # p line.split(" ")[0].to_i
      (0..line.split(" ").last.to_i - 1).each do |index|
        hash[line.split(" ")[0].to_i + index ] = line.split(" ")[1].to_i + index
        # p "hash[#{line.split(" ")[0].to_i + index}] =====>>  #{hash[line.split(" ")[0].to_i + index ]}"
        p hash
      end
    end

  end
end

craete_hash(seed_to_soils)
