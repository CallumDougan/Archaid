class RemoveGameStateFromXo < ActiveRecord::Migration
  def change
    remove_column :xos, :game_state, :String
  end
end
