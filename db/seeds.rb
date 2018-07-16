# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#sermon_roles_list = ['author', 'publisher', 'editor', 'reviewer']

  #sermon_roles_list.each do |r|
  #  Role.create(name: r, role_type: 'sermon')
 # end
 # Role.create(name: 'newUser', role_type: 'CMS')
  

 status_options = %w[Published Feature Editing Review]

 status_options.each{ |s| PostStatus.create(status_name: s)}

 user = User.create(email: 'admin@example.com', password: 'password')
 user.add_role('admin')