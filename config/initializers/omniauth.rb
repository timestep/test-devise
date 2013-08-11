Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, ENV['3305A299D2941E62FCEC5A010DBE017E']
end