#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#this is for apt-get update
execute "apt-get update" do
	command "apt-get update"
end