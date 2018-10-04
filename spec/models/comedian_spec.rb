RSpec.describe Comedian do
  describe 'Validation: invalid if' do
    it 'name is missing' do
      comic = Comedian.create(birth_date: Date.today())
      expect(comic).to_not be_valid
    end
    it 'birth_date is missing' do
      comic = Comedian.create(name: 'Mitch Hedberg')
      expect(comic).to_not be_valid
    end
  end
end
