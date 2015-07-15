class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.integer :stop
      t.string :location
      t.integer :time
      t.text :clue
      t.string :answer

      t.timestamps null: false
    end
  end
end
