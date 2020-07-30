organizations_list = [
    ["UMass ACM", "umass.acm@gmail.com"],
    ["UMass DSC", "umass.dsc@gmail.com"],
    ["UIUC DSC", "uiuc.dsc@gmail.com"],
    ["NTU DSC", "ntu.dsc@gmail.com"],
    ["Linux Org.", "linux@linux.org"]
]


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

organizations_list.each do |name, email|
  Organization.create(name: name, email: email)
end


projects_list.each do |title, organization_id|
  Project.create(title: title, organization_id: organization_id)
end


positions_list.each do |title, project_id, user_id, integer|
  Position.create(title: title, project_id: project_id, user_id: user_id, integer: integer)
end