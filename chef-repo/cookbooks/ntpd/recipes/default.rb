#
# Cookbook Name:: ntpd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Create a cookbook that will manage ntpd
# Use a template to manage /etc/ntp.conf
# Initially, the file’s content needn’t change from the defaults
#
# Packages for ntp on CentOS are
# ntp
# ntpdate

package "ntp" do
  action :install
end

package "ntpdate" do
  action :install
end

template "/etc/ntp.conf" do
  owner "root"
  group "root"
  mode "0644"
  source "ntp.conf.erb"
  action :create
end

service "ntpd" do
  action [:start, :enable]
end
