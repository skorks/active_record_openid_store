require 'active_record'

class ActiveRecordOpenidStore::Nonce < ActiveRecord::Base
  self.table_name= 'open_id_nonces'
  attr_accessible :server_url, :timestamp, :salt
end
