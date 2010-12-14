class Group < ActiveRecord::Base
 validates_presence_of :numb
 has_many :students
end
