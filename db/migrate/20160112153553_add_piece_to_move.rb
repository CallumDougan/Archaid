class AddPieceToMove < ActiveRecord::Migration
  def change
    add_column :moves, :piece, :integer
  end
end
