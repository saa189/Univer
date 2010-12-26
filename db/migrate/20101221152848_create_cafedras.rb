class CreateCafedras < ActiveRecord::Migration
  def self.up
    create_table :cafedras do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cafedras
  end
end
