require('minitest/autorun')
require('minitest/rg')
require_relative('../team_class')

class  TestTeam < Minitest::Test

  def setup
    @weirdoteam = Team.new("Weirdo Team", ["a","b","c","d","e"], "Big Weirdo")
  end


  def test_add_player
    @weirdoteam.add_player("f")

    expected = 6
    actual = @weirdoteam.players.length
    assert_equal(expected, actual)
  end

  def test_find_player
    expected = true
    actual = @weirdoteam.find_player("c")
    assert_equal(expected, actual)
  end

  def test_update_points
    actual = @weirdoteam.update_points(7)
    assert_equal(7, actual)
  end

end
