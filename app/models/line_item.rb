class LineItem < ApplicationRecord
  belongs_to :computer
  belongs_to :cart
  
  def total_price
    computer.price.to_i * quantity.to_i
  end
end
