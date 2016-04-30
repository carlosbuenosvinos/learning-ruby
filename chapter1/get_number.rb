# Get My Number
# Written by: Carlos Buenosvinos (@buenosvinos)

puts "Welcome to 'Get My Number!'"
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

found = false
number_guesses = 0
while number_guesses < 10 && !found
  puts "You've got #{10 - number_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  else
    puts "Good job, #{name}! You guessed my number in #{number_guesses + 1} guesses!"
    found = true
  end

  number_guesses += 1
end

if found
  puts "You did it in #{number_guesses}"
end