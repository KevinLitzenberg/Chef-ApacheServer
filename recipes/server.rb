#
# Cookbook Name:: apache_php
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['apache_php']['group']

user node['apache_php']['user'] do
  group node['apache_php']['group']
  system true
  shell '/bin/bash'
end


include_recipe 'apache2'

# disable default site
apache_site '000-default' do
#apache_site '/etc/apache2/sites-enabled/000-default do	
  enable true
end

# create apache config
#template "#{node['apache']['dir']}/sites-available/facingsf.com.conf" do
#replace hard-coded referances:
template "#{node['apache']['dir']}/sites-available/#{node['apache_php']['config']}" do
  source 'apache2.conf.erb'
  notifies :restart, 'service[apache2]'
end

# create document root
#directory '/var/www/html/facingsf.com/public_html' do
#replace hard coded referances
directory "#{node['apache_php']['document_root']}" do
#directory '/srv/apache/facingsf.com' do
  action :create
  recursive true
end

#write siteapache_site '/ect/apache2/sites-enabled/facingsf.com' do
#cookbook_file '/var/www/html/facingsf.com/public_html/index.html' do
#replace hard coded referances
cookbook_file "#{node['apache_php']['document_root']}/index.html" do
#cookbook_file '/srv/apache/facingsf.com/index.html' do
  mode '0644'
end

#enable facingsf.com
#apache_site 'facingsf.com' do
#replace hard coded referances
apache_site "#{node['apache_php']['sitename']}" do
#Below does not work
#apache_site '/ect/apache2/sites-enabled/facingsf.com' do	
  enable true
end




