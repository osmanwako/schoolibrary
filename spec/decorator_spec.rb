require_relative '../decorator'
require_relative '../person'

describe 'Test Decorator classes' do
  before(:context) do
    @person = Person.new(30, 'osman@wakowwwwwwww', 1)
    @decorator = Decorator.new(@person)
    @capitalize_decorator = CapitalizeDecorator.new(@person)
    @trimmer_decorator = TrimmerDecorator.new(@person)
  end

  context 'Testing Decorator classes and methods' do
    it 'test_correct_name' do
      expect(@decorator.correct_name).to eq('osman@wakowwwwwwww')
      expect(@capitalize_decorator.correct_name).to eq('Osman@wakowwwwwwww')
      expect(@trimmer_decorator.correct_name).to eq('osman@wako')
    end

    it 'test_capitalize_decorator' do
      expect(@capitalize_decorator.nameable.name).to eq('osman@wakowwwwwwww')
      expect(@capitalize_decorator.correct_name).to eq('Osman@wakowwwwwwww')
    end

    it 'test trimmer_decorator' do
      expect(@trimmer_decorator.nameable.name).to eq('osman@wakowwwwwwww')
      expect(@trimmer_decorator.correct_name).to eq('osman@wako')
    end
  end
end
