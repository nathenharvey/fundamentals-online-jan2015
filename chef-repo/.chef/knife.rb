# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nharvey20150115"
client_key               "#{current_dir}/nharvey20150115.pem"
validation_client_name   "nathen20150115-validator"
validation_key           "#{current_dir}/nathen20150115-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/nathen20150115"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
