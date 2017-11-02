class Picture < ApplicationRecord
  validates :url, presence: true

  belongs_to :post
end
