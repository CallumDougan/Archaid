class AddGameStateToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :game_state, :String
  end
end
