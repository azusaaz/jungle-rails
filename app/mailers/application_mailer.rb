class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@example.com',
  return_path: 'system@example.com'
  # layout 'mailer'

end
