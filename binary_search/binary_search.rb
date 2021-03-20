def binary_search(arr, item)
  low = 0
  high = arr.length-1

  while high > low
    span = (high - low) / 2
    span.round
    if span == 0
      return nil
    end
    mid = low + span
    if arr[mid] == item
      return mid
    end
    if arr[mid] > item
      high = mid
    else
      low = mid
    end
  end
end

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

p binary_search(arr, 1)


