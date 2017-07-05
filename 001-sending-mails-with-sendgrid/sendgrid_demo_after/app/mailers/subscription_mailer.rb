class SubscriptionMailer < ApplicationMailer
  def send_subscription_email(subscription)
    @subscription = subscription
    mail(
      to: @subscription.email,
      subject: 'Thanks for subscribing!'
    )
  end
end
