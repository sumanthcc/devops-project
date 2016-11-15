#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#Include updates so here im including the APT cookbook
include_recipe "apt"
#Installing Nginx webserver
package 'nginx' do
	action :install
end
#Enabling it on startup
service 'nginx' do
  action [ :enable, :start ]
end
#index source
cookbook_file "/var/www/html/index.nginx-debian.html" do
	source "index.html" 
	mode "0644"
end
cookbook_file "/etc/nginx/sites-available/default" do
	source "sites" 
	mode "0644"
end