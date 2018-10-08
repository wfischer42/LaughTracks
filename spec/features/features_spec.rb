RSpec.describe 'User:' do

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

  describe 'The root page' do
    it 'redirects to the comedians page' do
      visit '/'
      expect(current_path).to eq('/comedians')
    end
  end

  describe 'The comedians page' do
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
          expect(page).to have_content('Comedy Specials: 2')
          specials.each do |special|
            expect(page).to have_content(special.title)
            expect(page).to have_content(special.run_time)
          end
        end
      end
    end

    it 'displays comedy statistics' do
      visit '/comedians'
      within '#stats-card' do
        expect(page).to have_content('4')
        expect(page).to have_content('62 minutes')
        expect(page).to have_content('Illinois')
        expect(page).to have_content('Florida')
        expect(page).to have_content('48 years')
      end
    end

    describe 'with an age filter' do
      it 'only lists comedians of that age' do
        visit '/comedians?age=35'
        expect(page).to_not have_content('60 years')
      end

      it 'only lists stats for comedians of that age' do
        visit '/comedians?age=35'
        within '#stats-card' do
          expect(page).to have_content('2')
          expect(page).to have_content('35 years')
          expect(page).to have_content('66 minutes')
          expect(page).to have_content('Illinois')
          expect(page).to_not have_content('Florida')
        end
      end
    end
  end

  describe "the new comedian page" do
    it "offers form for adding a new comedian" do
      visit '/comedians/new'
      expect(page).to have_content("Add a new comic to the list!")
    end

    it "creates a new comedian on submission" do
      visit '/comedians/new'
      fill_in 'comedian[name]', with: 'Adam Sandler'
      fill_in 'comedian[birth_location]', with: 'New York'
      fill_in 'comedian[birthday]', with: 'September 9, 1966'
      fill_in 'comedian[image_url]', with: 'https://m.media-amazon.com/images/M/MV5BMjQyNzM2MjM1Ml5BMl5BanBnXkFtZTcwMDE5NjI3Mg@@._V1_.jpg'
      click_button 'Submit'
      expect(Comedian.last.name).to eq('Adam Sandler')
    end

    it "redirects to comedian page after submitting" do
      visit '/comedians/new'
      fill_in 'comedian[name]', with: 'Adam Sandler'
      fill_in 'comedian[birth_location]', with: 'New York'
      fill_in 'comedian[birthday]', with: 'September 9, 1966'
      fill_in 'comedian[image_url]', with: 'https://m.media-amazon.com/images/M/MV5BMjQyNzM2MjM1Ml5BMl5BanBnXkFtZTcwMDE5NjI3Mg@@._V1_.jpg'
      click_button 'Submit'
      expect(current_path).to eq('/comedians')
    end
  end
end
