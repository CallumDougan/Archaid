class CreateArcades < ActiveRecord::Migration
  def change
    create_table :arcades do |t|
      t.integer :game_1_id
      t.integer :game_2_id

      t.timestamps null: false
    end
  end
end
