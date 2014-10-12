def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(args)
  args.inject(0){|x, y| x + y}
end

def multiply(*args)
  args.inject(1){|x,y| x * y}
end

def power(a, b)
  answer = 1
  b.times do
    answer *= a
  end
  answer
end

def factorial(n)
  answer = n
  while n > 1
    n = n.pred
    answer *= n
  end
  answer
end
