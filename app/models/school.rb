class School < ApplicationRecord
  has_many :students
  has_many :teachers

  validates :name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
end
