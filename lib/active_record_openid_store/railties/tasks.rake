namespace :openid do
  desc 'Garbage Collect ActiveRecord OpenID store'
  task :gc => :environment do
    ActiveRecordOpenidStore::ActiveRecordStore.new.cleanup
  end
end

