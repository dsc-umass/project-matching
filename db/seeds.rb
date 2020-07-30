organization_list = [
    ["UMass ACM", "umass.acm@gmail.com"],
    ["UMass DSC", "umass.dsc@gmail.com"],
    ["UIUC DSC", "uiuc.dsc@gmail.com"],
    ["NTU DSC", "ntu.dsc@gmail.com"],
    ["Linux Org.", "linux@linux.org"]
]

organization_list.each do |name, email|
  Organization.create(name: name, email: email)
end

