class User < ApplicationRecord

  has_many :bank_cards
  STATUS = {"use" =>"使用", "no_use" => "不使用"}.freeze
end
