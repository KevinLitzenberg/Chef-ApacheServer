#
# Cookbook Name:: apache_php
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nano'

group node['apache_php']['group']

user node['apache_php']['user'] do
  group node['apache_php']['group']
  system true
  shell '/bin/bash'
end
