# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying articles'
Article.destroy_all

puts 'Adding articles'
Article.create(title: 'Exposition Laurence LECCIA & Jean LECCIA à Montpellier les 2,3,9 et 10 juin 2018', picture: 'expo-montpellier.jpeg', content: 'Laurence LECCIA & Jean LECCIA exposent à Montpellier les 2,3,9 et 10 juin 2018 de 11h à 13h & de 15h à 20h.
8 Rue Foch – Entrée libre', user_id: 1)
