Rails.application.config.middleware.use OmniAuth::Builder do
  provider :steam, '3305A299D2941E62FCEC5A010DBE017E'
  provider :twitter, 'EwwHID8sUclqtyOA9lkvbg', '7CePVnMl9Xk7iYrybvuUO9LvTnpRx01zKO4WOoJ4hG8'
  # provider :facebook, '532691236802279', 'a741296cfb109fd01216e4c72ea19165'
end