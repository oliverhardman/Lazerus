class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.text :description
      t.string :finish
      t.string :case
      t.string :motherboard
      t.string :power_supply
      t.string :grpahics_card
      t.string :central_processing_unit
      t.string :memory
      t.string :hard_drive

      t.timestamps
    end
  end
end
