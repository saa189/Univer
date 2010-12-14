class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :info
      t.references :group
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
