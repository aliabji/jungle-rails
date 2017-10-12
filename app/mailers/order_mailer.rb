class OrderMailer < ApplicationMailer
  def order_confirmation
    @user = session[:user_id].first_name
    mail(to: session[:user_id], subject: @order = "Order # #{Order.find(params[:id])} Confirmation")
end
