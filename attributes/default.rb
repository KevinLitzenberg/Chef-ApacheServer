default['apache_php']['user'] = 'sysuser'
default['apache_php']['group'] = 'sysuser'
default['apache_php']['name'] = 'sysuser' 
default['apache_php']['config'] = 'facingsf.com.conf'
default['apache_php']['sitename'] = 'facingsf.com'
##default['apache_php']['document_root'] = '/var/www/html/facingsf.com/public_html'
default['apache_php']['document_root'] = '/srv/apache/facingsf.com'
#node.default['apache_php']['user'] = 'sysuser'
#node.default['apache_php']['group'] = 'sysuser'


#node.default['app']['name'] = 'my_app'
#node.default['app']['document_root'] = "/var/www/html/facingsf.com/public_html/#{node['app']['name']}"