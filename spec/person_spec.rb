require_relative '../lib/person'

RSpec.describe Person do
  describe '#full_name' do
    it 'concatenates first name, middle name, and last name with spaces' do
      person = Person.new(
        first_name: 'Chandler',
        middle_name: 'Muriel',
        last_name: 'Bing'
      )

      expect(person.full_name).to eq('Chandler Muriel Bing')
    end

    it 'concatenates first name, middle name, and last name with spaces of a different person' do
      person = Person.new(
        first_name: 'Rachel',
        middle_name: 'Karen',
        last_name: 'Green'
      )

      expect(person.full_name).to eq('Rachel Karen Green')
    end

    it 'does not add extra spaces if middle name is missing' do
      person = Person.new(
        first_name: 'Phoebe',
        last_name: 'Buffay-Hannigan'
      )

      expect(person.full_name).to eq('Phoebe Buffay-Hannigan')
    end
  end

  describe '#full_name_with_middle_initial' do
    it 'concatenates first name, middle initial with period, and last name with spaces' do
      person = Person.new(
        first_name: 'Joesph',
        middle_name: 'Francis',
        last_name: 'Tribbiani'
      )

      expect(person.full_name_with_middle_initial).to eq('Joesph F. Tribbiani')
    end

    it 'concatenates first name, middle initial with period, and last name with spaces of a different person' do
      person = Person.new(
        first_name: 'Ross',
        middle_name: 'Eustace',
        last_name: 'Geller'
      )

      expect(person.full_name_with_middle_initial).to eq('Ross E. Geller')
    end

    it 'does not add extra spaces or a period if middle name is missing' do
      person = Person.new(
        first_name: 'Monica',
        last_name: 'Geller'
      )

      expect(person.full_name_with_middle_initial).to eq('Monica Geller')
    end
  end

  describe '#initials' do
    it 'returns all initials' do
      person = Person.new(
        first_name: 'Janice',
        middle_name: 'Litman',
        last_name: 'Goralnik'
      )

      expect(person.initials).to eq('JLG')
    end

    it 'returns all initials of a different person' do
      person = Person.new(
        first_name: 'Ursula',
        middle_name: 'Pamela',
        last_name: 'Buffay'
      )

      expect(person.initials).to eq('UPB')
    end

    it 'returns two characters if middle name is missing' do
      person = Person.new(
        first_name: 'Michael',
        last_name: 'Hannigan'
      )

      expect(person.initials).to eq('MH')
    end
  end
end