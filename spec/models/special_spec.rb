RSpec.describe Special do
  describe 'Validation:' do
    describe 'invalid if' do
      it 'name is missing' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end

    it 'belongs_to a comedian' do
      association = described_class.reflect_on_association(:comedian)
      expect(association.macro).to eq :belongs_to
    end
  end
end
