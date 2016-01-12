class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :row
      t.integer :column
      t.integer :match_id

      t.timestamps null: false
    end
  end
end
