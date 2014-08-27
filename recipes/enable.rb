node[:deploy].each do |application, deploy|

  file "#{deploy[:deploy_to]}/current/public/system/maintenance.html" do
    action :delete
  end

end