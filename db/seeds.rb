# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


kat = User.create(name: 'kat', email: 'kat@burst.com', password: 'kat', favorite_band: 'hozier')
nash = User.create(name: 'nash', email: 'nash@nash.com', password: 'nash', favorite_band: 'protomen')
heather = User.create(name: 'heather', email: 'heather@heather.com', password: 'heather', favorite_band: 'madonna')


party = Event.create(event_date: '2015-08-28', venue_name: 'output', venue_city: 'brooklyn', venue_state: 'NY', artists: 'hozier', ticket_url: 'www.output.com', user_id: 1)
fun = Event.create(event_date: '2015-08-28', venue_name: 'output', venue_city: 'brooklyn', venue_state: 'NY', artists: 'hozier', ticket_url: 'www.output.com', user_id: 2)
yeah = Event.create(event_date: '2015-08-28', venue_name: 'output', venue_city: 'brooklyn', venue_state: 'NY', artists: 'hozier', ticket_url: 'www.output.com', user_id: 1)
