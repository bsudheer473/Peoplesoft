# # encoding: utf-8

# Inspec test for recipe apache::server

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
   content '<h1>Hello,sudheer<h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end
