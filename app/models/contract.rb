class Contract < ActiveRecord::Base
  validates_length_of	:surname, :within => 2..50
  validates_length_of	:name, :within => 2..50
  validates_length_of	:lastname, :within => 2..50

end
