# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Roles
puts "\nCreating Roles"
['admin'].each do |role|
  Role.find_or_create_by(name: role)
  puts "#{role['name']} role has been created"
end

# Admin User

puts "\nCreating Users"
user = User.find_or_create_by(email: 'admin@sgsexpress.in')
user.password =  '12345678'
user.password_confirmation = '12345678'
user.save
user.confirm!
user.roles = Role.where(name: :admin)
