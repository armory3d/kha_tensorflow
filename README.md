# kha_tensorflow

[tensorflow.js](https://github.com/tensorflow/tfjs) for Kha

`git clone --recursive https://github.com/armory3d/kha_tensorflow`

Add as a subproject to `khafile.js`:
`await project.addProject("kha_tensorflow");`

```hx
TFHelper.init(function() {
	var model = TF.sequential();
	model.add(TF.layers.dense({units: 1, inputShape: [1]}));
	model.compile({loss: 'meanSquaredError', optimizer: 'sgd'});
	var xs = TF.tensor2d([1, 2, 3, 4], [4, 1]);
	var ys = TF.tensor2d([1, 3, 5, 7], [4, 1]);
	model.fit(xs, ys).then(function() {
		var res = model.predict(TF.tensor2d([5], [1, 1]));
		trace(res);
	});
});
```
