class Article < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2, maximum: 25}
  validates :description, presence: true, length: { minimum: 1, maximum: 350 }
  validates :country, presence: true
end