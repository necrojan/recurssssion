# Write a method #fibs which takes a number and returns that many
# members of the fibonacci sequence. Use iteration for this solution.
def fibs(num)
  arr = [0, 1]

  (2..num).each do |_i|
    arr << arr[-1] + arr[-2]
  end

  arr.last
end

p fibs(10)

# Now write another method #fibs_rec which solves the same problem recursively.
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider
# either of these lengths a requirement… just get it done).

def fibs_rec(num)
  return num if [0, 1].include?(num)

  fibs_rec(num - 1) + fibs_rec(num - 2)
end

p fibs_rec(10)
