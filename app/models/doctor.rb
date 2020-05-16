class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  paginates_per 5
end
