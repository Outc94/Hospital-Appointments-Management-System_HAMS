class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :notes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :patients, through: :notes
  has_many :doctors, through: :comments
  has_many :doctors, through: :appointments
  has_many :messages, dependent: :destroy


  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
