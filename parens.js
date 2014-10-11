function balanced_brackets(s) {
  var counter = 0;
  var index = 0;
  while (counter >=0 && index < s.length) {
    if (s[index] === '(') {
      counter++;
    }
    else if (s[index] === ')') {
      counter--;
    }
    index++;
  }   
  if (counter === 0) {
    console.log('Balanced');
  } else {
    console.log('Unbalanced');
  }
}