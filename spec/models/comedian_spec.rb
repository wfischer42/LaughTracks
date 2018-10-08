# require './app/models/comedian'

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

  describe 'Class Methods:' do
    before(:each) do
      b_day = Date.parse('June 2, 1958').to_time.to_i
      Comedian.create(name:"Brian Regan",birthday_timestamp: b_day, birth_location: "Florida", thumb_path: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/brian_regan_800x600.jpg")

      b_day = Date.parse('February 4, 1983').to_time.to_i
      Comedian.create(name: 'Hannibal Buress', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/hannibal_buress2_800x600.jpg')
    end

    it 'Can return average age of all entries' do
      expect(Comedian.average_age).to eq(48)
    end
  end
end
