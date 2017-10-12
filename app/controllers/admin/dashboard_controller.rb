class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['admin_user'], password: ENV['admin_pass']
  
  def show
  end
end
