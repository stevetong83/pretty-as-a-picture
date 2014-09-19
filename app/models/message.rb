class Message < ActiveRecord::Base

  validates :name, :email, :message, presence: true

  after_create :send_email

  private

  def send_email
    Notifier.contact_form(self).deliver
  end

end
