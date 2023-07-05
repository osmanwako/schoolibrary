def selectbook
    books = APP.getbooks
    return nil unless books
  
    puts('Select a book from the following list numbers')
    books.each_with_index do |book, i|
      puts("#{i}) Title : #{book.title}, Author:#{book.author}")
    end
    i = gets.chomp.to_i
    books[i]
end

def selectperson
    persons = APP.getpersons
    return nil unless persons
  
    puts('Select a book from the following list numbers')
    persons.each_with_index do |person, i|
      puts("#{i}) Name : #{person.name}, ID:#{person.id}, Age: #{person.age}")
    end
    i = gets.chomp.to_i
    persons[i]
end

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