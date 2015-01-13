#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package "git" do
  action :install
end

file "/home/chef/.gitconfig" do
  action :create
  owner "chef"
  group "chef"
  content "[user]\n  name=Nathen Harvey\n  email=nharvey@chef.io\n"
end
