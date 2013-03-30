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

  def test_single_numeral_to_decimal
    assert_equal 1, @numerals.to_decimal("I")
    assert_equal 5, @numerals.to_decimal("V")
    assert_equal 10, @numerals.to_decimal("X")
    assert_equal 50, @numerals.to_decimal("L")
    assert_equal 100, @numerals.to_decimal("C")
    assert_equal 500, @numerals.to_decimal("D")
    assert_equal 1000, @numerals.to_decimal("M")
  end

  def test_additions_to_decimal
    assert_equal 2, @numerals.to_decimal("II")
    assert_equal 3, @numerals.to_decimal("III")
    assert_equal 6, @numerals.to_decimal("VI")
    assert_equal 15, @numerals.to_decimal("XV")
    assert_equal 1050, @numerals.to_decimal("ML")
  end
end