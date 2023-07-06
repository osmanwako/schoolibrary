require_relative 'app'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'createpeople'
require_relative 'createbook'
require_relative 'selectbook'
require_relative 'selectperson'
require_relative 'createrental'
require_relative 'listpeople'
require_relative 'listbook'
require_relative 'listrental'



APP = App.new
def mainselect(num)
  case num
  when '1' then listbooks
  when '2' then listpeople
  when '3' then createperson
  when '4' then createbook
  when '5' then createrental
  when '6' then listrental
  else puts "\n"
  end
end

def main(message)
  puts message
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
    break if order == '7'

    mainselect(order)
  end
end

main("WelCome to School Library App!\n")
