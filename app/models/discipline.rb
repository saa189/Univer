class Discipline < ActiveRecord::Base
  validates_presence_of :name
  has_many :reportings
  has_many :lecturers
end
