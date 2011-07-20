class CreateActiveRecordOpenidStoreTables < ActiveRecord::Migration
  def self.up
    create_table :open_id_associations do |t|
      t.binary :server_url, :null => false
      t.string :handle, :null => false
      t.binary :secret, :null => false
      t.integer :issued, :null => false
      t.integer :lifetime, :null => false
      t.string :assoc_type, :null => false

      t.timestamps
    end

    create_table :open_id_nonces do |t|
      t.string :server_url, :null => false
      t.integer :timestamp, :null => false
      t.string :salt, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :open_id_associations
    drop_table :open_id_nonces
  end
end
