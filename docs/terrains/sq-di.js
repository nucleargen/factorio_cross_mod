(function() {
var data = {},
	chunk_size = 32,
	seed = 0,
	size = 32,
	chunk_x = 0,
	chunk_y = 0,
	water = 0,
	roughness = 1,
	map = document.getElementById("map"),
	max_height = 0;

function val(x, y, v) {
	var index = x + '_' + y;
	if (typeof(v) != 'undefined') {
		//console.log('val: base declared');
		data[index] = Math.max(0.0, Math.min(1.0, v));
	}
	else if (x <= 0 || y <= 0 || x >= size-1 || y >= size-1) {
		//console.log('val: bound coords');
		data[index] = Math.max(0.0, Math.min(1.0, water));
	}
	else {
		if (x <= 0 || x >= size || y <= 0 || y >= size) return 0.0;
		var base;
		if (data[index] == null) {
			// К этому блоку мы ещё вернемся ниже.
			base = 1;
			while (((x & base) == 0) && ((y & base) == 0))
				base <<= 1;
			if (((x & base) != 0) && ((y & base) != 0))
				squareStep(x, y, base);
			else
				diamondStep(x, y, base);
		}
	}
	max_height < data[index] && (max_height = data[index]);
	return data[index];
}
function displace(v, blockSize, x, y) {
	return (v + (randFromPair(x, y, seed) - 0.5) * blockSize * 2 / size * roughness);
}
function squareStep(x, y, blockSize) {
	if (data[x + '_' + y] == null) {
		val(x, y,
			displace((val(x - blockSize, y - blockSize) +
				  val(x + blockSize, y - blockSize) +
				  val(x - blockSize, y + blockSize) +
				  val(x + blockSize, y + blockSize)) / 4, blockSize, x, y));
	}
}
function diamondStep(x, y, blockSize) {
	if (data[x + '_' + y] == null) {
		val(x, y,
			displace((val(x - blockSize, y) +
				  val(x + blockSize, y) +
				  val(x, y - blockSize) +
				  val(x, y + blockSize)) / 4, blockSize, x, y));
	}
}
function randFromPair(x, y) {
	for (var i = 0; i < 32; i++) {
		var xm7 = x % 7;
		var xm13 = x % 13;
		var xm1301081 = x % 1301081;
		var ym8461 = y % 8461;
		var ym105467 = y % 105467;
		var ym105943 = y % 105943;
		y = x + seed;
		x += (xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943);
	}
	return (xm7 + xm13 + xm1301081 + ym8461 + ym105467 + ym105943) / 1520972.0;
}


document.querySelector('button.generator').onclick = function() {
	var button = this,
		form = button.form,
		count = 0;
	//data = {};
	//max_height = 0;
	seed = +form.seed.value;
	size = +form.size.value;
	chunk_size = +form.chunk_size.value;
	chunk_x = +form.chunk_x.value;
	chunk_y = +form.chunk_y.value;
	water = +form.base.value;
	roughness = +form.roughness.value;
	
	console.log('chunk',[Math.max(0,chunk_x*chunk_size),Math.max(0,chunk_y*chunk_size)],[Math.min(size,(+chunk_x+1)*chunk_size),Math.min(size,(+chunk_y+1)*chunk_size)]);
	for (var i = Math.max(0,chunk_x*chunk_size); i < Math.min(size,(chunk_x+1)*chunk_size); i++) {
		for (var j = Math.max(0,chunk_y*chunk_size); j < Math.min(size,(chunk_y+1)*chunk_size); j++) {
			if ( ! data[i+'_'+j]) {
				/*if (i == 0 || j == 0 || i == size-1 || j == size-1) {
					val(i,j,base);
				}
				else {*/
					val(i,j);
				//}
				count++;
			}
		}
	}
	console.log(seed,size,roughness,data,count,max_height);
	return false;
};
document.querySelector('button.render').onclick = function() {
	var button = this,
		form = button.form,
		size = form.size.value;
		map.innerHTML = '';
	for (var i = 0; i < size; i++) {
		for (var j = 0; j < size; j++) {
			var v = data[i+'_'+j];
			if (v) {
				var cell = document.createElement('span'),
					color = Math.floor(255*(1-v));///(max_height>0?max_height:1)));
				cell.className = 'map-cell';
				cell.style = 'background: rgb('+color+','+color+','+color+');';
				map.appendChild(cell);
			}
			else {
				var cell = document.createElement('span');
				cell.className = 'map-cell';
				map.appendChild(cell);
			}
		}
		map.appendChild(document.createElement('br'));
	}
	return false;
};
document.querySelector('button.reset').onclick = function() {
	data = {};
	max_height = 0;
	return false;
};
})();