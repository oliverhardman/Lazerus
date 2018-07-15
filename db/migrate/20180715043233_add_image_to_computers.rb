class AddImageToComputers < ActiveRecord::Migration[5.2]
  def change
    add_column :computers, :image, :json
  end
end
