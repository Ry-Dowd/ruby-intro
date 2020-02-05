fibonacci_hash = { 0 => 0, 1 => 1 }
def fibonacci(index)
  if index >= 0 
    if fibonacci_hash[index] != nil
      return fibonacci_hash[index]
    else
      return fibonacci_hash[index] = fibonacci(index-1) + fibonacci(index-2)
    end
  else
    puts ("Invalid argument, index must be greater than or equal to 0")
  end
end

def populate_fibonacci
  terms = 0
  until fibonacci(terms) > 4000000
    puts (fibonacci(terms))
    terms += 1
  end
end