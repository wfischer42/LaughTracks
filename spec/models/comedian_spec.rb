RSpec.describe Comedian do
  describe 'Validations:' do
    describe 'invalid if' do
      it 'name is missing' do
        comic = Comedian.create(birthday_timestamp: Time.now.to_i)
        expect(comic).to_not be_valid
      end

      it 'birthday_timestamp is missing' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end

    it 'has_many specials' do
      association = described_class.reflect_on_association(:specials)
      expect(association.macro).to eq :has_many
    end

  describe 'Instance Methods:'
    it 'Can calculate and return birthday' do
      bday = 'February 24, 1968'
      comedian = Comedian.create(
                   name:"Mitch Hedberg",
                   birthday_timestamp: Date.parse(bday).to_time.to_i,
                   birth_location: "Oaklahoma")
                   
      expect(comedian.age).to eq 50
    end
  end
end
