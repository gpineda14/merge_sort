def merge_sort(arr)
  return arr if arr.length == 1
  mid = arr.length / 2
  left = merge_sort(arr[0, mid])
  right = merge_sort(arr[mid, arr.length])
  merge(left, right)
end

def merge(left, right)
  temp = []
  until left.empty? || right.empty?
    left[0] >= right[0] ? temp << right.shift : temp << left.shift
  end
  temp + left + right
end
