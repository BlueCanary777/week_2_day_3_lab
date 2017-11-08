require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test

  def setup

    @drink1 = Drink.new("Vodka", 4.50)
    @drink2 = Drink.new("Beer", 5.00)
    @drink3 = Drink.new("Wine", 8.50)

    @pub = Pub.new("The King's Head", 0.0, [@drink1, @drink2, @drink3])

    @customer = Customer.new("Alan", 20.00)

  end

  def test_customer_name
    assert_equal("Alan", @customer.name)
  end

  def test_customer_wallet
    assert_equal(20.00, @customer.wallet)
  end

  def test_customer_can_afford_drink
    assert_equal(true, @customer.buy_drink(@drink1))
  end

end
