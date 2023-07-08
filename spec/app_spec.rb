require "test/unit"
require_relative "../app"

class TestApp < Test::Unit::TestCase
  def setup
    @app = App.new
    @book = Book.new("Ellily Cave", "Osman Wako")
    @person = Person.new(30, "Osman", 1)
    @rental = Rental.new("2022-07-06", @book, @person)
  end

  def test_addperson
    @app.addperson(@person)
    assert_equal([@person], @app.getpersons)
  end

  def test_getpersons
    assert_equal([], @app.getpersons)
  end

  def test_addbook
    @app.addbook(@book)
    assert_equal([@book], @app.getbooks)
  end

  def test_getbooks
    assert_equal([], @app.getbooks)
  end

  def test_addrental
    @app.addrental(@rental)
    assert_equal([@rental], @app.getrentals)
  end

  def test_getrentals
    assert_equal([], @app.getrentals)
  end
end
