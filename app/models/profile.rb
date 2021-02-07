class Profile < ApplicationRecord
  has_many :ratings
  validates :name, :email, presence: true
end