# Exercise34: Accessing Elements of Arrays


def phrase(number, ordinal)
  animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']
  print "The animal at #{number} is the #{ordinal} animal and is a "
  puts animals[number]
end

phrase(1, 'second')
phrase(2, 'third')
phrase(0, 'first')
phrase(3, 'fourth')
phrase(4, 'fifth')
phrase(2, 'third')
phrase(5, 'sixth')
phrase(4, 'fifth')