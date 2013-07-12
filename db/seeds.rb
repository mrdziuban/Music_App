# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create([{band_name: "Band One"}, {band_name: "Band Two"}])

Album.create([{album_name: "Album One", 
               band_id: 1, 
               cover_art_link: "http://i.imgur.com/G5RZH.jpg"},
              {album_name: "Album Two",
               band_id: 2,
               cover_art_link: "http://i.imgur.com/fabeB.jpg"}])

Track.create([{track_name: "Track One", 
               album_id: 1,
               run_time: "00:03:54",
               lyrics: "Test1\nTest1\nTest1"},
               {track_name: "Track Two", 
               album_id: 1,
               run_time: "00:03:45",
               lyrics: "Test2\nTest2\nTest2"},
               {track_name: "Track One", 
               album_id: 2,
               run_time: "00:03:13",
               lyrics: "Test1\nTest1\nTest1"},
               {track_name: "Track Two", 
               album_id: 2,
               run_time: "00:03:37",
               lyrics: "Test2\nTest2\nTest2"}])

User.create(email: "test@test.com")