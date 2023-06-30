require_relative 'main'

puts "WelCome to School Library App!\n"
loop do 
  puts "\nPlease choose an options by entering a number"
  puts "\n1 - List all books"
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  order = gets.chomp
  break if order=='7'
  getselect(order)
end 
