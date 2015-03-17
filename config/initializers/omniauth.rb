OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '200578776773676', '72c5e68c4e10f2725a1a7a2b37542c74'
end
