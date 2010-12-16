class Reporting < ActiveRecord::Base
  belongs_to :group
  belongs_to :discipline
end
