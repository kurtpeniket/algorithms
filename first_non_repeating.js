//My initial solution

function firstNonRepeating(s) {
  if (s === undefined) {
    return '';
  } else {

    const arr = s.split('');
    let obj = {};
    
    for(let i = 0; i < arr.length; i++) {
      if (!obj.hasOwnProperty(arr[i].toLowerCase())) {
        obj[arr[i]] = 1;  
      } else if (obj.hasOwnProperty(arr[i].toLowerCase())) {
        obj[arr[i]]++;
      } else {
        obj[arr[i]] = '';
      }
      console.log(obj);
    }

    for(const [k, v] of Object.entries(obj)) {
      if (v == 1) {
        return k;
      }
    }
  }
}

//The actual solution

function firstNonRepeatingLetter(s) {
  for(var i in s) {
    if(s.match(new RegExp(s[i],"gi")).length === 1) {
      return s[i];
    }
  }
  return '';
}
