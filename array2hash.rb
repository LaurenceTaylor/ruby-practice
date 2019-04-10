# Group the array of hashes below into a hash, where each key of the hash is a 
# sport, and each value of the hash is a list of names of people who play 
# that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
]

result = Hash.new { |key, value| key[value] = [] }

players.each do |hash|
  result[hash[:sport]] << hash[:name]
end

puts result

