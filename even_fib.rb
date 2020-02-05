$fibonacci_hash = { 0 => 0, 1 => 1 }
def fibonacci(index)
  if index >= 0 
    if $fibonacci_hash[index] != nil
      return $fibonacci_hash[index]
    else
      return $fibonacci_hash[index] = fibonacci(index-1) + fibonacci(index-2)
    end
  else
    puts ("Invalid argument, index must be greater than or equal to 0")
  end
end

def populate_fibonacci
  terms = 0
  sum = 0
  value = 0
  until value > 4000000
    puts (value)
    if value % 2 == 0
      sum += value
    end
    terms += 1
    value = fibonacci(terms)
  end
  puts("Sum of even fibonacci numbers = #{sum}")
end

populate_fibonacci