# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
company = Company.create(name: 'Josh Software', landline: '020-22228888')
user = User.create(name: 'Seema Jha', role: 'CompanyAdmin', mobile: '9689390777', company_id: company.id)

terminal = Terminal.create(name: 'Indori Lal', landline: '020-303029192', company_id: company.id)
menu_item = MenuItem.create(name: 'Pav Bhaji', veg: true, price: 120, terminal: terminal.id)
