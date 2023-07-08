require_relative '../book'
require_relative '../rental'
require_relative '../person'

describe 'Test Book class' do
  before(:context) do
    @book = Book.new('Ellily Cave', 'Osman Wako')
    @person = Person.new(30, 'Osman', 1)
  end
  context 'Testing Book class methods' do
    it 'test title accessor' do
      expect('Ellily Cave').to eq(@book.title)
    end

    it 'test author accessor' do
      expect('Osman Wako').to eq(@book.author)
    end

    it 'test rentals accessor' do
      expect(@book.rentals).to eq([])
    end

    it 'test add_rental method' do
      @book.add_rental(@person, '2023-07-06')
      expect(@book.rentals[0].date).to eq('2023-07-06')
      expect(@book.rentals[0].person.name).to eq('Osman')
    end
  end
end
