class HomeController < ApplicationController

  def info
    file = File.join(Rails.root, 'config', 'deployment_id')
    if File.exists?(file)
      deployment_id = File.read(file).chomp
      message = "Deployment id is #{deployment_id}"
    else
      message = "Couldn't determine id"
    end
    render text: message
  end

end
