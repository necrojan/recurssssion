def merge_sort(arr)
  return arr if arr.length <= 1

  left = merge_sort(arr[0...(arr.length / 2)])
  right = merge_sort(arr[(arr.length / 2)..arr.length])

  merge(left, right)
end

def merge(left, right)
  sorted_arr = []

  sorted_arr << (left.first <= right.first ? left.shift : right.shift) while [left.length, right.length].min.positive?

  left.each { |i| sorted_arr << i } if left.length.positive?

  right.each { |i| sorted_arr << i } if right.length.positive?

  sorted_arr
end

p merge_sort([4, 1, 3, 2, 6, 3, 18, 2, 9, 7, 3, 1, 2.5, -9])
