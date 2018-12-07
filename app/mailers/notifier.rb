class Notifier < ApplicationMailer

 
  def thanks(user, order)
    @user = user
    @order = order
    mail(:to => "#{user.first_name} #{user.last_name}<#{user.email}>",
    :subject => 'Thanks for your order!')
  end
 
end
