class CreateReportings < ActiveRecord::Migration
  def self.up
    create_table :reportings do |t|
      t.column :rtype, :text 
      t.column :discipline_id, :integer
      t.column :group_id, :integer
      t.timestamps
    end

  end

  def self.down
    drop_table :reportings
  end
end
