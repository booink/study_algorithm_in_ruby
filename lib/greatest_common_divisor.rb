# 最大公約数
# ユークリッドの互除法を使って求めている
def greatest_common_divisor(a, b)
  b, a = [a, b].minmax
  raise ArgumentError, "正の整数を指定してください" if 0 >= a
  while (b != 0)
    x = a % b
    a, b = b, x
  end
  a
end
alias gcd greatest_common_divisor

def recursive_gcd(a, b)
  b, a = [a, b].minmax
  raise ArgumentError, "正の整数を指定してください" if 0 >= a
  if b == 0
    a
  else
    recursive_gcd(b, a % b)
  end
end

require "test-unit"
class TestGcd < Test::Unit::TestCase
  def test_gcd
    assert_equal(21, gcd(1071, 1029))
  end

  def test_gcd_zero
    assert_equal(1, gcd(1, 0))
  end

  def test_exception_gcd
    assert_raise(ArgumentError) do
      gcd(0, -1)
    end
  end

  def test_recursive_gcd
    assert_equal(21, recursive_gcd(1071, 1029))
  end
end

