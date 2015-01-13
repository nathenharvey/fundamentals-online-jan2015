#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
template "/etc/motd" do
  action :create
  source "motd.erb"
  owner "root"
  mode "0644"
  group "root"
end
