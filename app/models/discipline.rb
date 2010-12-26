class Discipline < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_length_of	:name, :within => 2..70
  validates_presence_of :cafedra_name,
    :message => 'Укажите кафедру'
  validates_presence_of :cafedra_number,
    :message => 'Необходимо указать номер кафедры'
  belongs_to :group
  has_many :reportings
  has_many :teachers
end
