# Exercise 36 : The Caesar Palace

# Caesar's Office
def caesar
  puts "Good! Now your're in Caesar's office."
  puts "You Win!"
  exit(0)
end

def ask(question)
  arr = question.split('\n')
  arr.each {|qu| puts qu }
  print "> "
end

# if good answer
def oracle
  question = <<-FOO
    This is the oracle room.
    The question is : what walks on 4 legs in the morning, two at noon and three in the evening?
  FOO
  ask(question)
  answer = gets.chomp
  
  tries = 0
  maxtries = 3

  while tries < maxtries
    if answer.include? "man"
      caesar
    elsif tries < maxtries
      puts "You have #{maxtries - tries} tries left!"
    end
    tries += 1
    ask(question)
    answer = gets.chomp
  end

  dead("Incorrect!")
end

def main
  question = <<-FOO
    Welcome to Caesar's palace.
    Your mission, should you accept it is to enter in Caesar's office.
    There are 3 doors.
    Which one do you choose?
  FOO
  ask(question)
  answer = gets.chomp

  case answer
    when "left"
      oracle
    when "right"
      super_question
    when "ahead"
      trap
    else
      dead("Bad choice!")
  end
end

def super_question
  question = <<-FOO
    You arrived to the bonus room.
    What is the capitole of the Roman empire?
    a) Athens
    b) Roma
    c) Condate
    Choose wisely!
  FOO
  ask(question)

  answer = gets.chomp

  case answer
    when "a"
      dead("Incorrect!")
    when "b"
      caesar
    when "c"
      dead("Incorrect!")
    else
      dead("Bad choice!")
  end
end

def trap
  question = <<-FOO
    TRAP!!!! You must choose between pest and cholera.
    Which one do you choose?
  FOO
  ask(question)

  answer = gets.chomp
  if answer == "pest"
    dead("You're sick of the pest!")
  elsif answer == "cholera"
    dead("You're sick of the cholera!")
  else
    dead("Looser!")
  end      
end

def dead(why)
  puts why, "Game Over! Try again!"
  exit(0)
end

main