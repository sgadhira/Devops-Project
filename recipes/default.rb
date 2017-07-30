#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


# To install apache package
package 'httpd' do 
	action [:install]
end

#To enable the apache after a reboot and start the App server.
service 'httpd' do
  action [:enable, :start]
end

file "/www/html/index.html" do
  owner 'root'
  group 'root'
  mode 0755
  content ::File.open("/file/index.html").read
  action :create
end
