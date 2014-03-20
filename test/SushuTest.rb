require 'test/unit'
require '../Sushu'

class SushuTest < Test::Unit::TestCase
  def test_isPrime?
    assert is_prime?(13)
  end
end