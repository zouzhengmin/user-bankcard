class ChangeUserAgeToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :age, :integer
  end
end
