RSpec.describe 'User:' do
  describe 'The comedians page' do
    before(:each) do
      @comedians = []

      b_day = Date.parse('June 2, 1958').to_time.to_i
      comedian = Comedian.create(name:"Brian Regan",birthday_timestamp: b_day, birth_location: "Florida", thumb_path: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/brian_regan_800x600.jpg")
      comedian.specials.create(title: 'Live from Radio City Music Hall', run_time: 57, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTcyNTgzNjU5NF5BMl5BanBnXkFtZTgwNzcwMTIwOTE@._V1_.jpg')
      comedian.specials.create(title: 'The Epitome of Hyperbole', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTc1MjcxMTY0Ml5BMl5BanBnXkFtZTgwMjk3MjA2MDE@._V1_.jpg')
      @comedians << comedian

      b_day = Date.parse('February 4, 1983').to_time.to_i
      comedian = Comedian.create(name: 'Hannibal Buress', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/hannibal_buress2_800x600.jpg')
      comedian.specials.create(title: 'Live From Chicago', run_time: 67, thumb_path: 'https://m.media-amazon.com/images/M/MV5BZGJhNmQ3M2UtNDc1Ny00YjllLTkyYjYtZmE5NjU2ZjE1ZTYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')
      comedian.specials.create(title: 'Animal Funace', run_time: 65, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_.jpg')
      @comedians << comedian

    end

    it 'shows comedian information' do
      visit '/comedians'
      @comedians.each do |comedian|
        within "#comedian-#{comedian.id}-block" do
          expect(page).to have_content(comedian.name)
          expect(page).to have_content(comedian.birth_location)
          expect(page).to have_content(comedian.age)
        end
      end
    end

    it 'lists comedy specials' do
      visit '/comedians'
      @comedians.each do |comedian|
        specials = comedian.specials
        expect(specials.length).to_not eq 0
        within "#comedian-#{comedian.id}-block" do
          specials.each do |special|
            expect(page).to have_content(special.title)
            expect(page).to have_content(special.run_time)
          end
        end
      end
    end
  end
end
