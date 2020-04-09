# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Victim.delete_all
Victim.create!(date: "23/04/1996 02:00:00", last_name: "Baty", first_name: "Danielle", age: "35", victim_of: "Vol avec violence, agression sexuelle", country: "France", city: "Paris", address: "47 avenue de Choisy", zip_code: "75013")
Victim.create!(date: "25/08/1996 05:00:00", last_name: "Bertrand", first_name: "Nelly", age: "40", victim_of: "Meurtre, viol", country: "France", city: "Paris", address: "rue Caillaux", zip_code: "75013")
