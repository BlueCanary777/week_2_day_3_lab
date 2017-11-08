class Pub
  attr_accessor :name, :till, :drinks

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks || []

  end

  def drinks_length
    return @drinks.length
  end

end
