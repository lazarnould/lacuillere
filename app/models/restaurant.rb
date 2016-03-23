class Restaurant < ActiveRecord::Base

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
end
