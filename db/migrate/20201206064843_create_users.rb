class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.decimal :height, null: false
      t.decimal :weight, null: false

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
