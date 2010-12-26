class Group < ActiveRecord::Base
validates_uniqueness_of :numb
 validates_presence_of :numb
 has_many :students
 has_many :disciplines
 has_many :reportings, :through => :disciplines
 has_many :lecturers, :through => :disciplines
end
