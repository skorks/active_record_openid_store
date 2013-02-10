Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid, :store => ActiveRecordOpenidStore::ActiveRecordStore.new, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end
