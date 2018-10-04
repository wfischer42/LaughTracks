RSpec.describe Special do
  describe 'Validation: Invalid if' do
    it 'name is missing' do
      special = Special.create
      expect(special).to_not be_valid
    end
  end
end
