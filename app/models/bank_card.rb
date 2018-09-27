class BankCard < ApplicationRecord

  belongs_to :user
  STATUS = {"use" =>"正在使用", "no_use" => "废弃"}.freeze
  BANKNAME = ["中国银行","建设银行","招商银行"]

end
