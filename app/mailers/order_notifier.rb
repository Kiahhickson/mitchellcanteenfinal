class OrderNotifier < ApplicationMailer
  default from: 'Kiah Hickson <canteenapptest@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: "Canteen App Order Confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.delivered.subject
  #
  def delivered(order)
    @order = order

    mail to: order.email, subject: "Your order is ready"
  end
end
