class Discipline < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :group
  has_many :reportings
  has_many :lecturers
end
