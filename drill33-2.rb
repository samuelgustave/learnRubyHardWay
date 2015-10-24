
numbers = []

def func(top, numbers)
  for i in (0..top)
    puts "At the top is #{i}"
    numbers.push(i)

    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

func(6,numbers)

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }