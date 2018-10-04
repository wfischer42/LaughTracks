RSpec.describe Comedian do
  describe 'Validations:' do
    describe 'invalid if' do
      it 'name is missing' do
        comic = Comedian.create(birth_date: Date.today())
        expect(comic).to_not be_valid
      end

      it 'birth_date is missing' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end

    it 'has_many specials' do
      association = described_class.reflect_on_association(:specials)
      expect(association.macro).to eq :has_many
    end
  end
end
