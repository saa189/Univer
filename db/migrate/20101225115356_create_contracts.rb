class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.column :surname, :text
      t.column :name, :text
      t.column :lastname, :text
      t.column :birthday, :timestamp
      t.column :passport, :integer
      t.column :medpolis, :integer
      t.column :pens, :integer
      t.column :inn, :integer
      t.column :education, :text
      t.column :salary, :integer
      t.column :teacher_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
