class RemoveImageFromComputers < ActiveRecord::Migration[5.2]
  def change
    remove_column :computers, :image, :string
  end
end
