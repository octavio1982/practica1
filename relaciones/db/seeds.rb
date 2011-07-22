# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Profile.create(:name => 'Hola', :lastname => 'Hola', :email => 'hola@hola.com', :address => 'Rio Tomatlan')
Transaction.create(:profile_id => '1', :ammount => '32323232.0')
Transaction.create(:profile_id => '1', :ammount => '56.0')               