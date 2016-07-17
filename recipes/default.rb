#
# Cookbook Name:: apache_php
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nano'

apt_update 'Update the apt cache daily' do 
    frequency 86_400
    action :periodic
end

include_recipe 'apache_php::server'
