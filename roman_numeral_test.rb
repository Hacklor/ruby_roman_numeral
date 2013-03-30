require "test/unit"

class RomanNumeralTest < Test::Unit::TestCase

  def test_zero
    assert_equal "", RomanNumeral.new.to_roman(0)
  end

  def test_single_numeral
    assert_equal "I", RomanNumeral.new.to_roman(1)
    assert_equal "V", RomanNumeral.new.to_roman(5)
    assert_equal "X", RomanNumeral.new.to_roman(10)
    assert_equal "L", RomanNumeral.new.to_roman(50)
    assert_equal "C", RomanNumeral.new.to_roman(100)
    assert_equal "D", RomanNumeral.new.to_roman(500)
    assert_equal "M", RomanNumeral.new.to_roman(1000)
  end

  def test_additions
    assert_equal "II", RomanNumeral.new.to_roman(2)
    assert_equal "VI", RomanNumeral.new.to_roman(6)
  end

  def test_subtractions
    assert_equal "IV", RomanNumeral.new.to_roman(4)
    assert_equal "IX", RomanNumeral.new.to_roman(9)
    assert_equal "XL", RomanNumeral.new.to_roman(40)
    assert_equal "XC", RomanNumeral.new.to_roman(90)
    assert_equal "CD", RomanNumeral.new.to_roman(400)
    assert_equal "CM", RomanNumeral.new.to_roman(900)
  end
end