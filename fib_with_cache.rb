class FibCache
  @@cache = {}

  def self.fib(n)
    return 1 if n <= 2
    if @@cache[n]
      @@cache[n]
    else
      @@cache[n] = fib(n-1) + fib(n-2)
    end
    
  end

  def self.cache()
    puts @@cache
  end

  #alternate online answer
  def self.super_fib(n)
    $fibcache ||= []
    $fibcache[n] ||= (n < 2 ? n : fib(n-1) + fib(n-2) )
  end

end

# cache = {
#   1: 1
#   2: 1
#   3: 2
#   4: 3
#   5: 5
#   6: 8
#   7: 13

# }

FibCache.fib(300)
FibCache.cache()