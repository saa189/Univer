class Student < ActiveRecord::Base
validates_uniqueness_of :info
belongs_to :group 
end
