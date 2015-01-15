#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
search("users", "*:*").each do |user_data|
  user user_data["id"] do
    comment user_data["comment"]
    uid user_data["uid"]
    gid user_data["gid"]
    home user_data["home"]
    shell user_data["shell"]
  end

  #THIS IS PSEUDO CODE, IT WON'T WORK YET
  # directory "#{home}/.ssh"
  #
  # file "#{home}/.ssh/authorized_keys" do
  #   content user_data["ssh_key"]
  # end
end

include_recipe "users::groups"
