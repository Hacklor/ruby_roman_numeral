class RomanNumeral
  def initialize
    @romans = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }
  end

  def to_roman(number)
    return "" if number == 0

    @romans.each do |key, value|
      if number >= key
        return value + to_roman(number - key)
      end
    end
  end

  def to_decimal(roman)
    return 0 if roman == ""

    @romans.each do |key, value|
      if roman.start_with? value
        return key + to_decimal(roman.sub(value, ''))
      end
    end
  end
end