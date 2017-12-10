class Product < ApplicationRecord
  has_attachment :photo

  validates :photo, presence: true

end
