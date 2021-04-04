class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
