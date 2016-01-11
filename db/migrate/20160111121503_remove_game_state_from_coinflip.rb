class RemoveGameStateFromCoinflip < ActiveRecord::Migration
  def change
    remove_column :coinflips, :game_state, :String
  end
end
