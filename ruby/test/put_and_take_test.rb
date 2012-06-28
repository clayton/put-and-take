require 'test_runner'

class PutAndTakeTest < Test::Unit::TestCase
  def setup
    @game = PutAndTake.new
  end

  def test_put_one
    result = @game.evaluate("1", "P")

    assert_equal(result, -1)
  end

  def test_put_two
    result = @game.evaluate("2", "P")

    assert_equal(result, -2)
  end
end