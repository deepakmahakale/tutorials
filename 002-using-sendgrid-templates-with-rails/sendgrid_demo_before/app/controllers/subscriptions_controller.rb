class SubscriptionsController < ApplicationController
  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # POST /subscriptions
  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      SubscriptionMailer.send_subscription_email(@subscription).deliver
      redirect_to root_url, notice: I18n.t('subscription.create')
    else
      render :new
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
