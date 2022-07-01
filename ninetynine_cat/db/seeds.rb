# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat1 = Cat.create(birth_date: '2019/02/09', color: 'white', name: 'Snow', sex: 'F', description: 'its a cat')
cat2 = Cat.create(birth_date: '2007/08/18', color: 'grey', name: 'fluffy', sex: 'M', description: 'its a cat')