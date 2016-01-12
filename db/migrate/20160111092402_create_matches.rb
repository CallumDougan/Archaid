class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_1_id
      t.integer :user_2_id
      t.string  :game_type
      t.integer :arcade_id
      t.string  :game_state
      t.string  :result

      t.timestamps null: false
    end
  end
end
