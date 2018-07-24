class RemovePriceFromComputers < ActiveRecord::Migration[5.2]
  def change
    remove_column :computers, :price, :decimal
  end
end
