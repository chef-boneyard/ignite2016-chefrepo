
# 
# Fix issues with Windows compliance policies
#

# Set the minium password length to 14
execute 'Minimum password length' do
  command 'net accounts /minpwlen:14'
  action :run
  not_if { ::File.exist?('C:\minPassLength.lock') }
  notifies :create, 'file[C:\minPassLength.lock]', :immediately
end

file 'C:\minPassLength.lock' do
  action :nothing
end
