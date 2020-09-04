def fibs(number_of_members)
  fib_sequence = [0, 1]
  return fib_sequence.slice(0, number_of_members) if number_of_members <= 2

  (number_of_members - 2).times do
    fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
  end
  fib_sequence
end

def fibs_rec(number_of_members)
  return [0, 1].slice(0, number_of_members) if number_of_members <= 2
  
  fib_sequence = fibs_rec(number_of_members - 1)
  fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
end

p fibs(15)
p fibs_rec(15)