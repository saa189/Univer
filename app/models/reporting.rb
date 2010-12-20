class Reporting < ActiveRecord::Base
  validates_presence_of :rtype,
    :message => 'Укажите тип отчетности'
  belongs_to :group
  belongs_to :discipline
end
