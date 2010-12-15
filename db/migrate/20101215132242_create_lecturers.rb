class CreateLecturers < ActiveRecord::Migration
  def self.up
    create_table :lecturers do |t|
      t.column :surname, :text
      t.column :name, :text
      t.column :lastname, :text
      t.column :discipline_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :lecturers
  end
end
