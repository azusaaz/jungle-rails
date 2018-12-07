class NotifierPreview < ActionMailer::Preview
  def thanks
    Notifier.thanks(User.last, Order.last)
  end
end