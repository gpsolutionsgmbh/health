class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.date :date, null: false
      t.integer :nutrion, null: false, default: 0
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :foods, [:user_id, :date]
  end
end
