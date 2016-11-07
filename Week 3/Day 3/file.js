var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ];

function process(data){
	var positions = [];
	for (var i = 0; i < data.length; i++) {
		for (var j = 0; j < data.length; j++) {
			if (data[i] + data[j] == 0) {
				positions.push(i.toString() + ',' + j.toString())
			}
		}
	}
	return positions
}

var results = process(exampleArray);
console.log(results);
