class AddUserRefToComputers < ActiveRecord::Migration[5.2]
  def change
    add_reference :computers, :user, foreign_key: true
  end
end
