class Profile < ApplicationRecord  
  validates :name, :email, presence: true
end