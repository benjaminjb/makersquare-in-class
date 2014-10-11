var alphaCount = function (alphabet, string) {
  var string = string.toLowerCase().split('');
  var alphabet = alphabet.toLowerCase().split('');
  var counter = {};
  for (var i = 0; i < alphabet.length; i++) {
    counter[alphabet[i]] = 0;
    for (var j = 0; j < string.length; j++) {
      if (string[j] == alphabet[i]) {
        counter[alphabet[i]]++;
      }
    }
  }
  var answer = "";
  var check = 0;
  for (o in counter) {
    check += counter[o];
  }
  if (check == 0) {
    console.log("no matches");
  } else {
    for (o in counter) {
      answer += (o + ":" counter[o] + ",");
    }
    answer = answer.slice(0,-1);
    console.log(answer);
  }
};