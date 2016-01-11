class CreateCoinflips < ActiveRecord::Migration
  def change
    create_table :coinflips do |t|
      t.string :game_state
      t.integer :arcade_id

      t.timestamps null: false
    end
  end
end
