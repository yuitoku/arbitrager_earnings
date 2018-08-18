class CreateProfits < ActiveRecord::Migration[5.2]
  def change
    create_table :profits do |t|
      t.text :date
      t.integer :total_jpy_balance
      t.integer :profit
      t.float :profit_rate

      t.timestamps
    end
  end
end