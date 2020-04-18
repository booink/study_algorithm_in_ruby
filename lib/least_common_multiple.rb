# 最小公倍数
# 最大公約数 * 最小公倍数 == a * b
require_relative './greatest_common_divisor'

def least_common_multiple(a, b)
  a * b / gcd(a, b)
end
alias lcm least_common_multiple

require "test-unit"
class TestLcm < Test::Unit::TestCase
  def test_lcm
    assert_equal(210, lcm(30, 42))
  end
end
