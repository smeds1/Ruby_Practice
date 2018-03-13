#Sam Smedinghoff
#3/13/18
#fibonacci.rb

def fibonacci(n)
  if n==1 || n == 2
    return 1
  end
  return fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(10)
