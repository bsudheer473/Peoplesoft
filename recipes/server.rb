

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
   content '<h1>Hello,sudheer<h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end
