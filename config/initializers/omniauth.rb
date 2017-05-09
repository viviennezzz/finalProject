OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '975202969843-ug8hqu33o9831reqm0po1a6fpa93lmpd.apps.googleusercontent.com', 'Cf4GE44XQYgBYSCgfVFFCpOp', {:skip_jwt => true, client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end