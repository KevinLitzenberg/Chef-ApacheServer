#
# Cookbook Name:: apache_php
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


file '/'var/www/html/index.html' do
  content  '<h1>I said do not break shit!</h1>' 
end 
