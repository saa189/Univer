class Discipline < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name,
    :message => 'Должно быть указано имя дисциплины'
  belongs_to :group
  has_many :reportings
  has_many :lecturers
end
