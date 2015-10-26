# Drill39-1.rb Hashes, Oh Lovely Hashes

# create a mapping of provinces to abbreviation
provinces = {
  'Quebec' => 'QC',
  'Ontario' => 'ON',
  'New-Brunswick' => 'NB',
  'Nova Scotia' => 'NS',
  'British Columbia' => 'BC'
}

# create a basic set of provinces and some cities in them
cities = {
  'QC' => 'Montreal',
  'BC' => 'Vancouver',
  'NB' => 'Moncton'
}

# add some more cities
cities['NS'] = 'Halifax'
cities['ON'] = 'Toronto'

# puts out some cities
puts '-' * 10
puts "QC Province has: #{cities['QC']}"
puts "ON Province has: #{cities['ON']}"

# puts some provinces
puts '-' * 10
puts "Nova Scotia's abbreviation is: #{provinces['Nova Scotia']}"
puts "Ontario's abbreviation is: #{provinces['Ontario']}"

# do it by using the province then cities dict
puts '-' * 10
puts "Quebec has: #{cities[provinces['Quebec']]}"
puts "British Columbia has: #{cities[provinces['British Columbia']]}"

# puts every state abbreviation
puts '-' * 10
provinces.each do |province, abbrev|
  puts "#{province} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '-' * 10
provinces.each do |province, abbrev|
  city = cities[abbrev]
  puts "#{province} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
province = provinces['Calgary']

if !province
  puts "Sorry, no Calgary."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'CL' is: #{city}"

# any
puts "There is a province that has a Q in its name" if provinces.any? {|key, value| key.include?('Q')}

puts provinces.sort {|k,v| k.length}


