class AddNameToCoinflip < ActiveRecord::Migration
  def change
    add_column :coinflips, :name, :string
  end
end
