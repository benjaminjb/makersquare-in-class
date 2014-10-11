var count_down = function(x){
	if (x === 0) {
		console.log(x)
		return
	}
	console.log(x)
	count_down(x-1)
};

count_down(5)

var fizzbuzz = function (x) {
    if (x > 1) {
    	fizzbuzz(x-1) 
    }
    if (x % 15 == 0 ) {
      console.log("fizzbuzz")
    }
    else if (x % 3 == 0 ){
      console.log("fizz")
    } 
    else if (x % 5 == 0 ) {
    	console.log("buzz")
    }
    else {
      console.log(x)
    }
};