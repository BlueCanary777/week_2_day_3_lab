class Customer

  attr_accessor :name, :wallet, :age

  def initialize(name, wallet, age)

    @name = name
    @wallet = wallet
    @age = age

  end

  # def buy_drink(drink)
  #   if wallet >= drink.price
  #     return true
  #   else
  #     return false
  #   end
  # end

  def check(drink)
    if age >= 18 && wallet >= drink.price
      return true
    else
      return false
    end
  end

  def remove_money(drink)
    result = wallet - drink.price
    return result
  end

  def buy_drink(pub, drink)
    if check(drink) == true
      pub.till += drink.price
      remove_money(drink)
      return pub.till
    else
      return "Customer can't afford drink"
    end
  end



end
