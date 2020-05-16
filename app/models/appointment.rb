class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  paginates_per 5
end
