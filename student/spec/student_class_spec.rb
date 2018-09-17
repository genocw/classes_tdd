require('minitest/autorun')
require('minitest/rg')
require_relative '../student_class'

class TestStudent < Minitest::Test


  def test_make_talk
    bob = Student.new("Bob", "E25")
    assert_equal("I'm Bob and I'm speaking", bob.make_talk)
  end

  def test_say_fav_lang
    jane = Student.new("Jane", "E23")
    jane.fav_lang = "Ruby"
    assert_equal("Ruby",jane.say_fav_lang)
  end


end
