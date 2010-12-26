class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.column :surname, :text
      t.column :name, :text
      t.column :lastname, :text
      t.column :title, :text
      t.column :cafedra_name, :text
      t.column :cafedra_number, :integer
      t.column :ltype, :text
      t.column :stype, :text
      t.column :labtype, :text
      t.column :discipline_id, :integer
      t.column :group_id, :integer
      t.column :contract_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
