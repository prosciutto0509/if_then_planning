class List < ApplicationRecord
  belongs_to :user
  
  has_many :cards, dependent: :destroy
  validates :time_zone, presence: true
  validates :title, length: {in: 1..255}
end
