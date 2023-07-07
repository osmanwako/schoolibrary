class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def addperson(person)
    @persons << person
  end

  def getpersons
    @persons
  end

  def addbook(book)
    @books << book
  end

  def getbooks
    @books
  end

  def addrental(rental)
    @rentals << rental
  end

  def getrentals
    @rentals
  end
end
