def factorial(n)
  if n <= 0
    return 1
  else
    return n * factorial(n - 1)
  end
end
factorial(1000000)

def fact( n )
  @stack_size += 1
  if (n == 0)
    1
  else
    n * fact(n-1)
  end
end

[10_000, 20_000, 50_000, 100_000, 8733, 8732].each do |n|
  print "n=#{n.to_s.ljust(6)}: "
  begin
    @stack_size = 0
    fact(n)
  rescue SystemStackError
    puts "stack level too deep at: #{@stack_size}"
  end
end
