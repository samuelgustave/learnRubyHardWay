
numbers = []

def func(top, numbers, increment)
  i = 0
  while i < top
    puts "At the top is #{i}"
    numbers.push(i)

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

func(13,numbers,2)

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }