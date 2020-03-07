def merge_sort (arr)
  return arr if arr.length == 1
  mid = arr.length / 2
  merge(merge_sort(arr.slice(0...mid)), merge_sort(arr.slice(mid..-1)))
end

def merge (left, right)
  merged = []
  until left.empty? or right.empty?
    if left.first <= right.first 
      merged << left.shift
    else 
      merged << right.shift
    end
  end
  merged.concat(left).concat(right)
end

arr = [5,124,53,1234,9,1,2,514,123,33,31,1,32,14,64,24,32,12,45,67,78,89]
puts merge_sort(arr)
