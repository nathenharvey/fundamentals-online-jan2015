package "git" do
  action :install
end

file "/home/chef/.gitconfig" do
  action :create
  owner "chef"
  group "chef"
  content "[user]\n  name=Nathen Harvey\n  email=nharvey@chef.io\n"
end
