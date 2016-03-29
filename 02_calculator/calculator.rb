def add(n1,n2)
  n1+n2
end

def subtract(n1,n2)
  n1-n2
end

def sum(arr)
  arr.reduce(0,:+)
end

def multiply(*args)
  args.reduce(:*)
end

def power(b,p)
  b**p
end

def factorial(b)
  return 1 if b==0
  b*factorial(b-1)
end
