class RemoveResultFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :result, :string
  end
end
