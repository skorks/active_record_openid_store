require "active_record_openid_store/version"

module ActiveRecordOpenidStore
  if defined?(Rails)
    require 'active_record_openid_store/engine' 
  else
    models_dir = Pathname.new(File.expand_path(File.dirname(__FILE__))).join("../app/models").to_s
    lib_dir = File.expand_path(File.dirname(__FILE__))
    $:.unshift(models_dir) unless $:.include?(models_dir)
    $:.unshift(lib_dir) unless $:.include?(lib_dir)
    require 'active_record_openid_store/active_record_store'
  end
end

