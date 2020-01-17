#
# Cookbook:: jobs_watch
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update "update" do
  action :update
end

package "python3-dev" do
  action :install
end

package "python3-pip" do
  action :install
end

remote_directory '/home/vagrant/app' do
  source 'app'
  action :create
end

execute "pip install requirements" do
  command "pip3 install -r /home/vagrant/app/requirements.txt"
  cwd 'home/ubuntu'
end

directory '/home/vagrant/Downloads' do
  action :create
end

 file '/home/vagrant/Downloads/ItJobsWatchTop30.csv' do
  action :create
end

file '/home/vagrant/Downloads/ItJobsWatchTop30.csv' do
  action :create
  mode '777'
end
