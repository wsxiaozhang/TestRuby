require 'test/unit'

class ExampleTest < Test::Unit::TestCase
  def test_truth
    assert true
  end

  def test_nil
    assert nil
  end

  def test_Example_read
    assert Example.read, "fail to read"
  end
end

class Example
  def Example.read
    false
  end
end
