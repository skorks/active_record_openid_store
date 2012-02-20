require 'openid/association'
require 'time'
require 'active_record'

class ActiveRecordOpenidStore::Association < ActiveRecord::Base
  self.table_name= 'open_id_associations'
  def from_record
    OpenID::Association.new(handle, secret, Time.at(issued), lifetime, assoc_type)
  end
end

