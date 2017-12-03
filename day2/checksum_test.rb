require 'test/unit'
require_relative 'corruption'

class TestCorruption < Test::Unit::TestCase
  def test_checksum
    assert_equal(18, Corruption.new("test1.csv").checksum)
  end

  def test_my_input
    assert_equal(58975, Corruption.new("my_input.csv").checksum)
  end
end
