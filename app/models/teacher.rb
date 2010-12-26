class Teacher < ActiveRecord::Base
  validates_presence_of :name,
    :message => 'Должно быть указано имя преподавателя'
  validates_presence_of :surname,
    :message => 'У преподавателя должна быть фамилия'
  validates_presence_of :lastname,
    :message => 'Должно быть указано отчество преподавателя'
  validates_presence_of :title,
    :message => 'Звание преподавателя'

  belongs_to :group
  belongs_to :discipline
end
