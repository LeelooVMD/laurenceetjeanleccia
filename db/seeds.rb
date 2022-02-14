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
Article.create(title: 'Exposition Laurence LECCIA & Jean LECCIA', picture: 'expo-montpellier.jpeg', content: 'Laurence LECCIA & Jean LECCIA exposent à Montpellier les 2,3,9 et 10 juin 2018 de 11h à 13h & de 15h à 20h.
8 Rue Foch – Entrée libre', user_id: 1)
Article.create(title: 'Exposition Laurence LECCIA à Sète', picture: 'sete-invitation.png', content: 'Exposition du 16/10/2015 au 25/10/2015 au 16 Rue Gabriel Péri.', user_id: 1)
Article.create(title: 'Exposition "Entre les chalets" à Gruissan', picture: 'gruissan-exposition.jpeg', content: 'Exposition de Laurence Leccia en 2016 à Gruissan Plage.', user_id: 1)
Article.create(title: 'Exposition Laurence LECCIA à Montpellier', picture: 'montpellier-exposition.jpeg', content: 'Exposition en 1995 à Les Passagers de l\'art au 3 Rue Nozeran.', user_id: 1)
