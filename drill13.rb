amount = ARGV.first.to_f

print "Please enter the rebate %: "
rebate = $stdin.gets.chomp.to_f

amountReduced = amount - (amount * rebate / 100)
puts "The reduced price is $#{amountReduced.round(2)}!!!"