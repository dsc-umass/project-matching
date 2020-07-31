require 'faker'

projects_list = [
    ["Crypto Hack", 1],
    ["Project Matching", 2],
    ["Stocksmith", 2],
    ["Kotlin Rush", 3],
    ["Linux", 5],
    ["GitHub", 5],
]

# TODO: seed users too, using the devise signup. These users would be used for `user_id` in positions.

positions_list = [
    ["Moderator", 1, 0, 11],
    ["Tech Lead", 2, 0, 10],
    ["Backend Engineer", 2, 0, 9],
    ["Project Manager", 3, 0, 11],
    ["Kotlin Developer", 4, 0, 8],
    ["Core Maintainer", 5, 0, 7],
    ["Kernel Engineer", 5, 0, 6]
]

(1..20).each do
  Organization.create(name: Faker::University.name, email: Faker::Internet.email)
end


(1..30).each do
  Project.create(title: Faker::Game.title, organization_id: rand(20))
end


(1..30).each do |x|
  Position.create(title: Faker::Job.position, project_id: x, user_id: rand(30), integer: rand(10))
end