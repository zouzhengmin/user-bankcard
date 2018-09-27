class User < ApplicationRecord

  has_many :bank_cards, dependent: :destroy
  STATUS = {"use" =>"使用", "no_use" => "不使用"}.freeze

  validates :name, presence: true
end
