require "active_record_openid_store"
require "rails"

module ActiveRecordOpenidStore
  class Engine < Rails::Engine
    #engine_name :active_record_openid_store
    initializer "active_record_openid_store init" do |app|
      require 'active_record_openid_store/active_record_store'
    end
    rake_tasks do
      load "active_record_openid_store/railties/tasks.rake"
    end
  end
end
