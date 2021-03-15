# @param {Integer} x
# @return {Integer}
def reverse(x)
  prefix = x.negative? ? '-' : ''
  reversed_str = prefix + x.abs.to_s.reverse
  reversed_int = reversed_str.to_i

  if reversed_int > 2147483648 || reversed_int < -2147483647
      return 0
  end

  reversed_int
end
