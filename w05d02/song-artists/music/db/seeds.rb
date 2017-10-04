# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


childish_gambino = Artist.create(name: "Childish Gambino")
the_smiths = Artist.create(name: "The Smiths")
kero_kero_bonito = Artist.create(name: "Kero Kero Bonito")



redbone = Song.create(title: "Redbone", album:"Awaken My Love!" ,genre: "Contemporary Rap")
heartbeat = Song.create(title: "Heartbeat", album:"Camp" ,genre: "Contemporary Rap")
freaks_and_geeks = Song.create(title: "Freaks and Geeks", album:"Camp" ,genre: "Contemporary Rap")

this_charming_man = Song.create(title: "This Charming Man", album:"The Smiths" ,genre: "Alt Rock")
how_soon_is_now = Song.create(title: "How Soon is Now", album:"Hatful of Hollow" ,genre: "Alt Rock")
bigmouth_strikes_again = Song.create(title: "Bigmouth Strikes Again", album:"The Queen is Dead" ,genre: "Alt Rock")

trampoline = Song.create(title: "Trampoline", album:"Graduation" ,genre: "Japanese Style English Electro Pop")
lipslap = Song.create(title: "Lipslap", album:"Graduation" ,genre: "Japanese Style English Electro Pop")
sick_beat = Song.create(title: "Sick Beat", album:"Intro Bonito" ,genre: "Japanese Style English Electro Pop")

childish_gambino.songs << redbone
childish_gambino.songs << heartbeat
childish_gambino.songs << freaks_and_geeks
childish_gambino.save

the_smiths.songs << this_charming_man
the_smiths.songs << how_soon_is_now
the_smiths.songs << bigmouth_strikes_again
the_smiths.save

kero_kero_bonito.songs << trampoline
kero_kero_bonito.songs << lipslap
kero_kero_bonito.songs << sick_beat
kero_kero_bonito.save


