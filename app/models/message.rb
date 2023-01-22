class Message < ApplicationRecord

  validates :name, :email, :description, presence: true
  validates :name, :email, length: { minimum: 2 }
  validates :name, length: { maximum: 25 }
  validates :description, length: { minimum: 25 }
  validates :description, length: { maximum: 300 }
end
