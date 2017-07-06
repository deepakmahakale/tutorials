class SubscriptionMailer < ApplicationMailer
  def send_subscription_email(subscription)
    @subscription = subscription

    headers 'X-SMTPAPI' => {
      'sub' => { '[email]' => [subscription.email] },
      'filters' => {
        'templates' => {
          'settings' => {
            'enable' => 1,
            'template_id' => 'de9c0f46-3fea-4bab-bd91-dd5d06b909a4'
          }
        }
      }
    }.to_json

    mail(
      to: @subscription.email,
      subject: 'Thanks for subscribing!'
    )
  end
end
