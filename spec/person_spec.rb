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

    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: 'Phoebe',
        last_name: 'Buffay-Hannigan'
      )

      expect(person.full_name).to eq('Phoebe Buffay-Hannigan')
    end
  end
end