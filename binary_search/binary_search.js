const binary_search = (arr, item) => {
  let low = 0;
  let high = arr.length -1;

  while (high >= low) {
    let span = Math.floor((high - low) / 2);
    if (span == 0){
      return undefined;
    }
    mid = low + span;
    if (arr[mid] == item){
      return mid;
    }
    if (arr[mid] > item){
      high = mid;
    }else {
      low = mid;
    }
  }
}

const arr = [2, 4, 6, 8];

console.log("The answer is:" + binary_search(arr, 6));
