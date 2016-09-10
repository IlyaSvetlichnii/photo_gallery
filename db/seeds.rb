# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# cpu = Photo.create!(
#     caption: 'Intel',
#     image: File.new(fixtures_path.join('cpu.jpg'))
# )
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


jon = User.create!(name: 'Jon', email: 'jon@example.com', password: 'qwerty', password_confirmation: 'qwerty')
bob = User.create!(name: 'Bob', email: 'bob@example.com', password: 'qwerty', password_confirmation: 'qwerty')

cpu = Photo.create!(
    caption: 'Intel Core i7',
    image: File.new(fixtures_path.join('cpu.jpg'))
)
hdd= Photo.create!(
    caption: 'hdd',
    image: File.new(fixtures_path.join('hdd.jpg'))
)

