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

  def buy_drink(drink)
    if wallet >= drink.price
      return true
    else
      return false
    end
  end

end
