# define a function names cheese_and_crackers that accepts two arguments cheese_count and boxes_of_crackers
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  # prints string and interpolates the cheese_count argument
  puts "You have #{cheese_count} cheeses!"
  # prints string and interpolates the boxes_of_crackers argument
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  # prints string
  puts "Man that's enough for a party!"
  # print string
  puts "Get a blancket.\n"
# end of function
end

# prints string
puts "We can just give the function numbers directly:"
# calls cheese_and_crackers function and passes numbers 20 and 30 for arguments
cheese_and_crackers(20, 30)

# prints string
puts "OR, we can use variables from our script:"
# defines and initialize variable amount_of_cheese
amount_of_cheese = 10
# defines and initialize variable amount_of_crackers
amount_of_crackers = 50

# calls function passing variables amount_of_cheese and amount_of_crackers
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# prints string
puts "We can even do math inside too:"
# calls function passing math expressions arguments
cheese_and_crackers(10 + 20, 5 + 6)

# prints string
puts "And we can combine the two, variables and math:"
# calls function passing sum of variables and numbers as arguments
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

