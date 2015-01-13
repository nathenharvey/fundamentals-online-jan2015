#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
file "/etc/motd" do
  action :create
  content "Property of Chef Software, Inc.\n"
  owner "root"
  mode "0644"
  group "root"
end
