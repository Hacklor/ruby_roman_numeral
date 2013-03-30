require "test/unit"
require_relative "roman_numeral"

class RomanNumeralTest < Test::Unit::TestCase

  def setup
    @numerals = RomanNumeral.new
  end

  def test_zero_to_roman
    assert_equal "", @numerals.to_roman(0)
  end

  def test_single_numeral_to_roman
    assert_equal "I", @numerals.to_roman(1)
    assert_equal "V", @numerals.to_roman(5)
    assert_equal "X", @numerals.to_roman(10)
    assert_equal "L", @numerals.to_roman(50)
    assert_equal "C", @numerals.to_roman(100)
    assert_equal "D", @numerals.to_roman(500)
    assert_equal "M", @numerals.to_roman(1000)
  end

  def test_additions_to_roman
    assert_equal "II", @numerals.to_roman(2)
    assert_equal "VI", @numerals.to_roman(6)
  end

  def test_subtractions_to_roman
    assert_equal "IV", @numerals.to_roman(4)
    assert_equal "IX", @numerals.to_roman(9)
    assert_equal "XL", @numerals.to_roman(40)
    assert_equal "XC", @numerals.to_roman(90)
    assert_equal "CD", @numerals.to_roman(400)
    assert_equal "CM", @numerals.to_roman(900)
  end

  def test_empty_to_decimal
    assert_equal 0, @numerals.to_decimal("")
  end
end