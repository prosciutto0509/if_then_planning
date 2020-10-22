class Card < ApplicationRecord
  belongs_to :list
  belongs_to :complete, dependent: :destroy, optional: true
  validates :title, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000}
  validates :where, length: { in: 1..255 }
end


