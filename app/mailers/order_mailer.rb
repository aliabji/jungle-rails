class OrderMailer < ApplicationMailer
  def order_confirmation(user)
    @user = user
    mail(to: @user, subject: @order = "Order ##{@order} Confirmation")
  end
end
