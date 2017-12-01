require 'test/unit'
require_relative 'captcha'

class TestCaptcha < Test::Unit::TestCase
  def test_sum
    assert_equal(Captcha.sum("1122"), 3)
    assert_equal(Captcha.sum("1111"), 4)
    assert_equal(Captcha.sum("1234"), 0)
    assert_equal(Captcha.sum("91212129"), 9)
  end

  def test_sum_half
    assert_equal(Captcha.sum_half("1212"), 6)
    assert_equal(Captcha.sum_half("1221"), 0)
    assert_equal(Captcha.sum_half("123425"), 4)
    assert_equal(Captcha.sum_half("123123"), 12)
    assert_equal(Captcha.sum_half("12131415"), 4)
  end
end
