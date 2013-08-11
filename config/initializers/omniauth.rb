require 'omniauth-openid'
require 'openid'
require 'openid/store/filesystem'
require 'gapps_openid'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :open_id, store: OpenID::Store::Filesystem.new('./tmp'), name: 'udallas', identifier: 'https://www.google.com/accounts/o8/site-xrds?hd=udallas.edu'
end