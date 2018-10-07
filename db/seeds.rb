require './app/models/comedian'
require './app/models/special'

# TODO: Clean out seed file

b_day = Date.parse('June 2, 1958').to_time.to_i
comedian = Comedian.create(name:"Brian Regan",birthday_timestamp: b_day, birth_location: "Florida", thumb_path: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/brian_regan_800x600.jpg")
comedian.specials.create(title: 'Live from Radio City Music Hall', run_time: 57, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTcyNTgzNjU5NF5BMl5BanBnXkFtZTgwNzcwMTIwOTE@._V1_.jpg')
comedian.specials.create(title: 'The Epitome of Hyperbole', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTc1MjcxMTY0Ml5BMl5BanBnXkFtZTgwMjk3MjA2MDE@._V1_.jpg')

b_day = Date.parse('February 4, 1983').to_time.to_i
comedian = Comedian.create(name: 'Hannibal Buress', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/hannibal_buress2_800x600.jpg')
comedian.specials.create(title: 'Live From Chicago', run_time: 67, thumb_path: 'https://m.media-amazon.com/images/M/MV5BZGJhNmQ3M2UtNDc1Ny00YjllLTkyYjYtZmE5NjU2ZjE1ZTYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')
comedian.specials.create(title: 'Animal Funace', run_time: 65, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_.jpg')

b_day = Date.parse('August 26, 1982').to_time.to_i
comedian = Comedian.create(name: 'John Mulaney', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/john_mulaney_800x600.jpg')
comedian.specials.create(title: 'New in Town', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg')
comedian.specials.create(title: 'Kid Gorgeous', run_time: 65, thumb_path: 'https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')

b_day = Date.parse('June 20, 1978').to_time.to_i
comedian = Comedian.create(name: 'Mike Birbiglia', birthday_timestamp: b_day, birth_location: 'Massachusetts', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/mike_birbiglia_800x600.jpg')
comedian.specials.create(title: 'Thank God For Jokes', run_time: 70, thumb_path: 'https://m.media-amazon.com/images/M/MV5BNjM1NjNjOTUtMzk3Yi00NzZmLTg3NTQtZjE0N2U1MTYyZTViXkEyXkFqcGdeQXVyNDQyODU5MDQ@._V1_.jpg')
comedian.specials.create(title: "My Girlfriend's Boyfriend", run_time: 76, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTU0OTMzNDUyNV5BMl5BanBnXkFtZTgwMDYxNjkyMjE@._V1_.jpg')

b_day = Date.parse('May 25, 1973').to_time.to_i
comedian = Comedian.create(name: 'Demetri Martin', birthday_timestamp: b_day, birth_location: 'New York', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/demetri_martin_800x600.jpg')
comedian.specials.create(title: 'The Overthinker', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg')
comedian.specials.create(title: 'Live (At the Time)', run_time: 61, thumb_path: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg')


b_day = Date.parse('March 26, 1974').to_time.to_i
comedian = Comedian.create(name: 'Ali Wong', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path:
'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/Natasha-Leggero-2014_800x600.jpg')
comedian.specials.create(title: 'Hard Knock Wife', run_time: 64, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg')
comedian.specials.create(title: 'Baby Cobra', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_.jpg')

b_day = Date.parse('May 29, 1975').to_time.to_i
comedian = Comedian.create(name: 'Daniel Tosh', birthday_timestamp: b_day, birth_location: 'Germany', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/daniel_tosh_800x600.jpg')
comedian.specials.create(title: 'People Pleaser', run_time: 62, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMTAxOTk4NDk3MzheQTJeQWpwZ15BbWU4MDk5Mjg1Nzgx._V1_.jpg')
comedian.specials.create(title: 'Happy Thoughts', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BMjAwODYwMjU3OV5BMl5BanBnXkFtZTgwNzkyOTcwMzE@._V1_.jpg')

b_day = Date.parse('August 24, 1973').to_time.to_i
comedian = Comedian.create(name: 'Dave Chapelle', birthday_timestamp: b_day, birth_location: 'Washington, D.C.', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/dave_chappelle_800x600.jpg')
comedian.specials.create(title: 'Equanimity', run_time: 60, thumb_path: 'https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')
comedian.specials.create(title: 'The Bird Revelation', run_time: 49, thumb_path: 'https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')

b_day = Date.parse('February 23, 1983').to_time.to_i
comedian = Comedian.create(name: 'Aziz Ansari', birthday_timestamp: b_day, birth_location: 'South Carolina', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/aziz_ansari_800x600.jpg')
comedian.specials.create(title: 'Live in Madison Square Garden', run_time: 58, thumb_path: 'https://m.media-amazon.com/images/M/MV5BZDI2OGFlZmYtZDVjYy00ODU3LTg2MWMtOTNmYWYyNTljOTE4XkEyXkFqcGdeQXVyNDg1NjA2OA@@._V1_.jpg')
comedian.specials.create(title: 'Buried Alive', run_time: 80, thumb_path: 'https://m.media-amazon.com/images/M/MV5BNzAyNTYyODI5Nl5BMl5BanBnXkFtZTgwMzkwMzY1MDE@._V1_SY1000_CR0,0,679,1000_AL_.jpg')

# Skipping, probably
#
# b_day = Date.parse('April 29, 1954').to_time.to_i
# comedian = Comedian.create(name: 'Jerry Seinfeld', birthday_timestamp: b_day, birth_location: 'New York', thumb_path: 'https://consequenceofsound.files.wordpress.com/2015/06/jerry-seinfeld.jpg')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
#
# b_day = Date.parse('August 14, 1945').to_time.to_i
# comedian = Comedian.create(name: 'Steve Martin', birthday_timestamp: b_day, birth_location: 'Texas', thumb_path: 'https://flavorwire.files.wordpress.com/2016/08/steve-martin-2015.jpg')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
#
# b_day = Date.parse('January 12, 1978').to_time.to_i
# comedian = Comedian.create(name: 'Hannah Gadsby', birthday_timestamp: b_day, birth_location: 'New Zeland', thumb_path: 'https://www.billboard.com/files/media/hannah-gadsby-june-19-2018-billboard-1548.jpg')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')

#
# b_day = Date.parse('January 26, 1958').to_time.to_i
# comedian = Comedian.create(name: 'Ellen DeGeneres', birthday_timestamp: b_day, birth_location: 'Louisiana', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/ellen_degeneres_800x600.jpg')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')


# b_day = Date.parse('September 13, 1985').to_time.to_i
# comedian = Comedian.create(name: 'Lucas Brothers', birthday_timestamp: b_day, birth_location: 'New Jersey', thumb_path: 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/lucas_brothers_headshot_800x600.jpg')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')


# b_day = Date.parse('March 26, 1974').to_time.to_i
# comedian = Comedian.create(name: 'Natasha Leggero', birthday_timestamp: b_day, birth_location: 'Illinois', thumb_path:
# 'https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/Natasha-Leggero-2014_800x600.jpg')
# # comedian.specials.create(title: 'The Honeymoon Standup Special', run_time: 95, thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
# # comedian.specials.create(title: '', run_time: , thumb_path: '')
