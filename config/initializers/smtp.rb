ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: 'gmail.com',
    user_name: ENV['talkabout.mailer@gmail.com'],
    password: ENV['dqqikattrdciirgz'],
    authentication: :login,
    enable_starttls_auto: true
  }