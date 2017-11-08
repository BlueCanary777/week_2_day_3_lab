class Customer

  attr_accessor :name, :wallet

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  # def buy_drink(drink)
  #   if wallet >= drink.price
  #     return true
  #   else
  #     return false
  #   end
  # end

  def remove_money(drink)
    result = wallet - drink.price
    return result
  end

  def buy_drink(pub, drink)
    if wallet >= drink.price
      pub.till += drink.price
      remove_money(drink)
      return pub.till
    else
      return "Customer can't afford drink"
    end
  end



end
