class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments


  has_many :notes, dependent: :destroy
  has_many :users, through: :notes
  paginates_per 5

  def full_name
      "#{self.first_name} #{self.last_name}"
  end
end
