# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview
  def send_subscription_email
    subscription = Subscription.first
    SubscriptionMailer.send_subscription_email(subscription)
  end
end
