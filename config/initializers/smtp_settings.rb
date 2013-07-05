module SampleApp
  class Application < Rails::Application
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        domain: "gmail.com",
        user_name: "ctest145@gmail.com",
        password: ENV['MAILPASS'],
        authentication: 'plain',
        enable_starttls_auto: true
    }
    config.action_mailer.default_url_options = {
        host: "gmail.com"
    }
  end
end