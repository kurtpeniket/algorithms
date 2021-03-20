def binary_search(arr, item)
  low = 0
  high = arr.length-1

  while low <= high
    mid = low + high
    guess = arr[mid]
    if guess == item
      puts "Guess is index #{guess}... #{arr[guess]}"
      puts "#{item} is at index #{mid}"
      return mid
    elsif guess > item
      puts "Guess is index #{guess}... #{arr[guess]}"
      high = mid -1
    else
      puts "Guess is index #{guess}... #{arr[guess]}"
      low = mid + 1
      return nil
    end
  end
end

arr = [1, 3, 5, 7, 9]

binary_search(arr, 3)


