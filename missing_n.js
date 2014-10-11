var missingN = function(arrayMissingN) {
	var array = [];
	for (var i = 0; i < arrayMissingN[arrayMissingN.length-1]; i++) {
		array.push(i)
	};
	var answer = array.filter( function(x) { return arrayMissingN.indexOf(x) < 0 } );
	return answer.pop();
};

var missingN = function(arrayMissingN) {
	for (var i = 0; i < arrayMissingN[arrayMissingN.length-1]; i++) {
		if (!(arrayMissingN.contains(i))) {
			return i;
		}
	}
};

var missingN = function(arrayMissingN) {
	return arrayMissingN.filter (function (x) { return x !== arrayMissingN.indexOf(x)+1 } ).pop()-1;
};
