def append (array, num)
  return array if num < 0
  append(array.push(num), num - 1)
end

def append_rev (array, num)
  return array if num < 0
  append_rev(array.unshift(num), num - 1)
end

def fact (n)
  return n if n == 1
  n * fact(n - 1)
end

def fib_rec (n)
  return n == 1 || n == 0 ? 1 : fib_rec(n - 2) + fib_rec(n - 1)
end

def palindrome_check (str)
  return true if str.length == 1 || str.length == 0
  if str[0] == str[-1]
    palindrome_check(str[1...-1])
  else
    return false
  end
end

def sum_3or5 (n, sum)
  return sum if n == 1
  sum += n if n % 3 == 0 or n % 5 == 0
  sum_3or5(n - 1, sum)
end

puts sum_3or5(9, 0)