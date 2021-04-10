# @param {Integer} n
# @return {Integer}
def integer_break(n)
     n < 4 ? n - 1 : 3**((n-2)/3) * ((n-2)%3+2)
end
