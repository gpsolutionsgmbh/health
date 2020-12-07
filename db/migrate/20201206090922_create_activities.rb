class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.date :date, null: false, index: true
      t.integer :nutrion, null: false, default: 0
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :activities, [:user_id, :date]
  end
end
