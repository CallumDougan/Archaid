class AddNameToXo < ActiveRecord::Migration
  def change
    add_column :xos, :name, :string
  end
end
