class CreateDisciplines < ActiveRecord::Migration
  def self.up
    create_table :disciplines do |t|
      t.column :name, :text
      t.column :group_id, :integer
      t.column :cafedra_name, :text
      t.column :cafedra_number, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :disciplines
  end

end
