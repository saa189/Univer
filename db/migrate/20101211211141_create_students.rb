
class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :surname
      t.string :name
      t.string :lastname
      t.string :info
      t.string :bday
      t.string :bmounth
      t.string :byear
      t.string :from
      t.references :group
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
