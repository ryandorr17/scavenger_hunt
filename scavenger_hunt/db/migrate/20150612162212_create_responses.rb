class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :guess
      t.boolean :correct, default: false
      t.references :user, index: true
      t.integer :round_number

      t.timestamps null: false
    end
    add_foreign_key :responses, :users
    add_index :responses, [:user_id, :created_at]
  end
end
