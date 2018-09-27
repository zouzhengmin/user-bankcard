class CreateBankCards < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_cards do |t|
      t.string :number
      t.string :status
      t.string :bank_name
      t.integer :user_id
      t.timestamps
    end
  end
end
