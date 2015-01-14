require 'serverspec'

set :backend, :exec

describe 'apache' do
  it "is awesome" do
    expect(true).to eq true
  end

  it "is installed" do
    expect(package "httpd").to be_installed
  end

  it "is running" do
    expect(service "httpd").to be_running
  end

  it "is enabled" do
    expect(service "httpd").to be_enabled
  end

  it "is listening on the proper port" do
    expect(port 80).to be_listening
  end

  it "has our custom home page" do
    expect(file "/var/www/html/index.html").to be_file
    expect(file "/var/www/html/index.html").to contain("Hello")
  end

  it "returns the proper page when requested via HTTP" do
    expect(command("curl http://localhost").stdout).to match /hello/i
  end
end











