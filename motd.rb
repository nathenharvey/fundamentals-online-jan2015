file "/etc/motd" do
  action :create
  content "Property of Chef Software, Inc.\n"
  owner "root"
  mode "0644"
  group "root"
end
