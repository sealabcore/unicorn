node[:deploy].each do |application, deploy|

  directory "#{deploy[:deploy_to]}/current/public/system" do
    owner deploy[:user]
    group deploy[:group]
    mode 00644
    action :create
  end

  template "#{deploy[:deploy_to]}/current/public/system/maintenance.html" do
    owner deploy[:user]
    group deploy[:group]
    mode "0755"
    source 'maintenance.html.erb'
    action :create
  end

end