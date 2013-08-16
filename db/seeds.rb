Genre.destroy_all
Song.destroy_all
Album.destroy_all
Artist.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:name => 'Thriller')
s2 = Song.create(:name => 'Billie Jean')
s3 = Song.create(:name => 'Smells Like Teen Spirit')

a1 = Album.create(:name => 'Thriller')
a2 = Album.create(:name => 'Nevermind')
a3 = Album.create(:name => 'The White Album')

r1 = Artist.create(:name => 'Michael Jackson')
r2 = Artist.create(:name => 'Nirvana')
r3 = Artist.create(:name => 'Beatles')

u1 = User.create(:name => 'Bob', :image => 'http://4.bp.blogspot.com/-S_dPtrwriEA/UPkCRqQKV7I/AAAAAAAAA28/1SThAR87nOc/s1600/animal-farm.jpg', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Sam', :image => 'http://2.bp.blogspot.com/_Q8gcRiXyzp0/TPgrZW6YyLI/AAAAAAAAAAg/sEmlG_oKmK8/s1600/AnimalFarm270808_450x341.jpeg', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Jill', :image => 'http://www.sirenvisual.com.au/media/media/img/shortdescription/animalfarm1.shortdescription.jpg', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:name => 'admin', :image => 'x', :password => 'b', :password_confirmation => 'b')
u4.is_admin = true
u4.save


m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
