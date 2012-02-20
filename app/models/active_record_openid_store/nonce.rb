require 'active_record'

class ActiveRecordOpenidStore::Nonce < ActiveRecord::Base
  self.table_name= 'open_id_nonces'
end
