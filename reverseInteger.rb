# @param {Integer} x
# @return {Integer}
def reverse(x)
   if x.negative?
    x =  (x.to_s.reverse.to_i * - 1)
  else
    x = (x.to_s.reverse.to_i)
  end
  x.bit_length > 31 ? 0 : x
end



