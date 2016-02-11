Rails.application.config.middleware.use OmniAuth::Builder do
 provider :fitbit, '', '', scope: 'activity heartrate location nutrition profile settings sleep social weight'
end
