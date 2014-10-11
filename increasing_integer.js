var increasing_sequence = function(array) {

  var counter = 0
  var max_array = [array[0]]
  for (var i = 1; i < array.length; i++) {
    if (max_array[max_array.length-1] <= array[i]) {
      max_array.push(array[i])
    } else {
      if ( max_array.length > counter ) {
        counter = max_array.length
      }
      max_array = [array[i]]
    }
  }
  console.log(counter)
}