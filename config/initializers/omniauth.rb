
require 'omniauth-facebook'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1916873801874478", "74e3cde26b0bde1ab9cf75cd8ea9993f", :display => 'popup'
end
