
service "iptables" do
  # action [ :stop, :disable ]
  action [ :disable, :stop]
  only_if {::File.exist?("/etc/init.d/iptables") }
end

