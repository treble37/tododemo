# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(0..3).each do |i|
  todouser = Todouser.create(email: "todouser#{i}@todo.com", password: "password", password_confirmation: "password")
  t_folder = todouser.folders.create(name: "todouser#{i}_folder")
  t_folder.tasks.create(description: "Lorem description", duedate: "3/2#{i}/205#{i}")
end

