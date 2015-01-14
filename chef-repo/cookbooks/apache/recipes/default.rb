#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

service "httpd" do
  action :start
end

service "httpd" do 
  action :enable
end

template "/var/www/html/index.html" do
  source "index.html.erb"
  group "root"
  mode "0644"
  owner "root"
end