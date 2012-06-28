require 'test_runner'

class PutAndTakeTest < Test::Unit::TestCase
  def setup
    @game = PutAndTake.new
    @ten_token_game = PutAndTake.new(:tokens => 10)
  end

  def test_game_should_have_a_pot
    assert_equal(@ten_token_game.tokens, 10)
  end

  def test_put_one
    result = @game.evaluate("1", "P")

    assert_equal(result, -1)
  end

  def test_put_two
    result = @game.evaluate("2", "P")

    assert_equal(result, -2)
  end

  def test_take_one
    result = @game.evaluate("1", "T")

    assert_equal(result, 1)
  end

  def test_take_all
    result = @ten_token_game.evaluate("A", "T")

    assert_equal(result, 10)
  end

  def test_put_all
    result = @ten_token_game.evaluate("A", "P")

    assert_equal(result, -10)
  end
end