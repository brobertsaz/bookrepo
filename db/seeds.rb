# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'

@school = FactoryBot.create(:school)

FactoryBot.create_list(:student, 10, school: @school)

FactoryBot.create_list(:teacher, 10, school: @school)

FactoryBot.create(:teacher, email: 'admin.teacher@test.com',
                            password: 'password',
                            password_confirmation: 'password',
                            school: @school,
                            admin: true)