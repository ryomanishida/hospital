class Order < ApplicationRecord

  def self.search(num)
    if num
      Order.where(["user_id like?", "%#{num}%"])
    else
      Order.all
    end
  end

end
