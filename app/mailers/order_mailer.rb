class OrderMailer < ApplicationMailer
  def order_confirmation(order_id)
    @order = Order.find(order_id)
    @user = @order.email
    @line_items = @order.line_items

    mail(to: @order.email, subject: "Order ##{@order.id} Confirmation")
  end
end