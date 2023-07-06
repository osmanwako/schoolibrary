def createrental
  book = selectbook
  person = selectperson
  return unless person && book

  print "\n Date: "
  date = gets.chomp
  rental = Rental.new(date, book, person)
  APP.addrental(rental)
  puts 'Rental created successfully!'
end
