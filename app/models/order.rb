class Order < ApplicationRecord
  # belongs_to :user

  def self.search(num)
    if num
      Order.where(["user_id like?", "%#{num}%"])
    else
      Order.all
    end
  end

end
