class CreateDisciplines < ActiveRecord::Migration
  def self.up
    create_table :disciplines do |t|
      t.column :name, :text

      t.timestamps
    end
  end

  def self.down
    drop_table :disciplines
  end

end
