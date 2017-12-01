require 'test/unit'
require_relative 'captcha'

class TestCaptcha < Test::Unit::TestCase
  def test_captcha
    assert_equal(Captcha.sum("1122"), 3)
    assert_equal(Captcha.sum("1111"), 4)
    assert_equal(Captcha.sum("1234"), 0)
    assert_equal(Captcha.sum("91212129"), 9)
  end
end
