class User < ApplicationRecord

  def self.search(num)
    if num
      User.where(["id like?", "%#{num}%"])
    else
      User.all
    end
  end

end
