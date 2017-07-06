class Subscription < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /@/

  before_create :downcase_email

  private

  def downcase_email
    self.email = email.downcase
  end
end
