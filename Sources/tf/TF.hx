// https://js.tensorflow.org/api/0.10.0/
package tf;

#if js

@:native('tf')
extern class TF {
	// Creation
	static function tensor(values:Array<Dynamic>, ?shape:Array<Int>, ?dtype:Dynamic):Dynamic;
	static function scalar(value:Dynamic, ?dtype:Dynamic):Dynamic;
	static function tensor1d(values:Array<Dynamic>):Dynamic;
	static function tensor2d(values:Array<Dynamic>, ?shape:Array<Int>, ?dtype:Dynamic):Dynamic;
	static function tensor3d(values:Array<Dynamic>, ?shape:Array<Int>, ?dtype:Dynamic):Dynamic;
	static function tensor4d(values:Array<Dynamic>, ?shape:Array<Int>, ?dtype:Dynamic):Dynamic;
	static function buffer(?shape:Array<Int>, ?dtype:Dynamic, ?values:Array<Dynamic>):Dynamic;
	static function clone(x:Dynamic):Dynamic;
	static function shape(shape:Array<Int>, value:Dynamic, ?dtype:Dynamic):Dynamic;
	static function fromPixels(pixels:Dynamic, ?numChannels:Int):Dynamic;
	static function linspace(start:Int, stop:Int, num:Int):Dynamic;
	static function oneHot(indices:Dynamic, depth:Int, ?onValue:Float, ?offValue:Float):Dynamic;
	static function ones(shape:Array<Int>, ?dtype:Dynamic):Dynamic;
	static function onesLike(x:Dynamic):Dynamic;
	static function print(x:Dynamic, ?verbose:Bool):Dynamic;
	static function randomNormal(shape:Dynamic, ?mean:Dynamic, ?stdDev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static function randomUniform(shape:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?dtype:Dynamic):Dynamic;
	static function range(start:Dynamic, stop:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	static function truncatedNormal(shape:Dynamic, ?mean:Dynamic, ?stdDev:Dynamic, ?dtype:Dynamic, ?seed:Dynamic):Dynamic;
	static function variable(initialValue:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static function zeros(shape:Dynamic, ?dtype:Dynamic):Dynamic;
	static function zerosLike(x:Dynamic):Dynamic;
	// Transformations
	@:native('tf.cast')
	static function tfcast(x:Dynamic, dtype:Dynamic):Dynamic;
	static function expandDims(x:Dynamic, axis:Dynamic):Dynamic;
	static function pad(x:Dynamic, paddings:Dynamic, ?constantValue:Dynamic):Dynamic;
	static function reshape(x:Dynamic, shape:Dynamic):Dynamic;
	static function squeeze(x:Dynamic, ?axis:Dynamic):Dynamic;
	// Slicing and joining
	static function concat(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	static function gather(x:Dynamic, indices:Dynamic, ?axis:Dynamic):Dynamic;
	static function reverse(x:Dynamic, ?axis:Dynamic):Dynamic;
	static function slice(x:Dynamic, begin:Dynamic, ?size:Dynamic):Dynamic;
	static function split(x:Dynamic, numOrSizeSplits:Dynamic, ?axis:Dynamic):Dynamic;
	static function stack(tensors:Dynamic, ?axis:Dynamic):Dynamic;
	static function tile(x:Dynamic, reps:Dynamic):Dynamic;
	// Models
	static function sequential(?config:Dynamic):Dynamic;
	static function model(config:Dynamic):Dynamic;
	// Inputs
	static function input(config:Dynamic):Dynamic;
	// Loading
	static function loadModel(modelConfigPath:String):Dynamic;
	// Layers
	static var layers:Dynamic;
	// Operations
	static function add(a:Dynamic, b:Dynamic):Dynamic;
	static function sub(a:Dynamic, b:Dynamic):Dynamic;
	static function mul(a:Dynamic, b:Dynamic):Dynamic;
	static function div(a:Dynamic, b:Dynamic):Dynamic;
	static function maximum(a:Dynamic, b:Dynamic):Dynamic;
	static function minimum(a:Dynamic, b:Dynamic):Dynamic;
	static function mod(a:Dynamic, b:Dynamic):Dynamic;
	static function pow(base:Dynamic, exp:Dynamic):Dynamic;
	static function squaredDifference(a:Dynamic, b:Dynamic):Dynamic;
	static function abs(x:Dynamic):Dynamic;
	static function acos(x:Dynamic):Dynamic;
	static function acosh(x:Dynamic):Dynamic;
	static function asin(x:Dynamic):Dynamic;
	static function asinh(x:Dynamic):Dynamic;
	static function atan(x:Dynamic):Dynamic;
	static function atanh(x:Dynamic):Dynamic;
	static function aceil(x:Dynamic):Dynamic;
	static function clipByValue(x:Dynamic, clipValueMin:Float, clipValueMax:Float):Dynamic;
	static function cos(x:Dynamic):Dynamic;
	static function cosh(x:Dynamic):Dynamic;
	static function elu(x:Dynamic):Dynamic;
	static function erf(x:Dynamic):Dynamic;
	static function exp(x:Dynamic):Dynamic;
	static function expm1(x:Dynamic):Dynamic;
	static function floor(x:Dynamic):Dynamic;
	static function leakyRelu(x:Dynamic, ?alpha:Float):Dynamic;
	static function log(x:Dynamic):Dynamic;
	static function log1p(x:Dynamic):Dynamic;
	static function logSigmoid(x:Dynamic):Dynamic;
	static function neg(x:Dynamic):Dynamic;
	static function prelu(x:Dynamic):Dynamic;
	static function reciprocal(x:Dynamic):Dynamic;
	static function relu(x:Dynamic):Dynamic;
	static function round(x:Dynamic):Dynamic;
	static function rsqrt(x:Dynamic):Dynamic;
	static function selu(x:Dynamic):Dynamic;
	static function sigmoid(x:Dynamic):Dynamic;
	static function sign(x:Dynamic):Dynamic;
	static function sin(x:Dynamic):Dynamic;
	static function sinh(x:Dynamic):Dynamic;
	static function softplus(x:Dynamic):Dynamic;
	static function sqrt(x:Dynamic):Dynamic;
	static function square(x:Dynamic):Dynamic;
	static function step(x:Dynamic, ?alpha:Float):Dynamic;
	static function tan(x:Dynamic):Dynamic;
	static function tanh(x:Dynamic):Dynamic;
	static function matMul(a:Dynamic, b:Dynamic, ?transposeA:Dynamic, ?transposeB:Dynamic):Dynamic;
	static function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function outerProduct(v1:Dynamic, v2:Dynamic):Dynamic;
	static function transpose(x:Dynamic, ?perm:Dynamic):Dynamic;
	static function avgPool(x:Dynamic, filterSize:Dynamic, strides:Dynamic, pad:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function conv1d(x:Dynamic, filter:Dynamic, stride:Dynamic, pad:Dynamic, ?dataFormat:Dynamic, ?dilation:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function conv2d(x:Dynamic, filter:Dynamic, strides:Dynamic, pad:Dynamic, ?dataFormat:Dynamic, ?dilations:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function conv2dTranspose(x:Dynamic, filter:Dynamic, outputShape:Dynamic, strides:Dynamic, pad:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function depthwiseConv2d(x:Dynamic, filter:Dynamic, strides:Dynamic, pad:Dynamic, ?dataFormat:Dynamic, ?dilations:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function maxPool(x:Dynamic, filterSize:Dynamic, strides:Dynamic, pad:Dynamic, ?dimRoundingMode:Dynamic):Dynamic;
	static function separableConv2d(x:Dynamic, depthwiseFilter:Dynamic, pointwiseFilter:Dynamic, strides:Dynamic, pad:Dynamic, ?dilation:Dynamic, ?dataFormat:Dynamic):Dynamic;
	static function argMax(x:Dynamic, ?axis:Dynamic):Dynamic;
	static function argMin(x:Dynamic, ?axis:Dynamic):Dynamic;
	static function logSumExp(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function max(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function mean(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function min(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function sum(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function batchNormalization(x:Dynamic, mean:Dynamic, variance:Dynamic, ?varianceEpsilon:Dynamic, ?scale:Dynamic, ?offset:Dynamic):Dynamic;
	static function localResponseNormalization(x:Dynamic, ?radius:Dynamic, ?bias:Dynamic, ?alpha:Dynamic, ?beta:Dynamic):Dynamic;
	static function moments(x:Dynamic, ?axis:Dynamic, ?keepDims:Dynamic):Dynamic;
	static function softmax(logits:Dynamic, ?dim:Dynamic):Dynamic;
	static var image:Dynamic;
	static function basicLSTMCell(forgetBias:Dynamic, lstmKernel:Dynamic, lstmBias:Dynamic, data:Dynamic, c:Dynamic, h:Dynamic):Dynamic;
	static function multiRNNCell(lstmCells:Dynamic, data:Dynamic, c:Dynamic, h:Dynamic):Dynamic;
	static function equal(a:Dynamic, b:Dynamic):Dynamic;
	static function greater(a:Dynamic, b:Dynamic):Dynamic;
	static function greaterEqual(a:Dynamic, b:Dynamic):Dynamic;
	static function less(a:Dynamic, b:Dynamic):Dynamic;
	static function lessEqual(a:Dynamic, b:Dynamic):Dynamic;
	static function logicalAnd(a:Dynamic, b:Dynamic):Dynamic;
	static function logicalNot(x:Dynamic):Dynamic;
	static function logicalOr(a:Dynamic, b:Dynamic):Dynamic;
	static function logicalXor(a:Dynamic, b:Dynamic):Dynamic;
	static function logicalNotEqual(a:Dynamic, b:Dynamic):Dynamic;
	static function where(condition:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static function movingAverage(v:Dynamic, x:Dynamic, decay:Dynamic, ?step:Dynamic, ?zeroDebias:Dynamic):Dynamic;
	// Training
	static function grad(f:Dynamic):Dynamic;
	static function grads(f:Dynamic):Dynamic;
	static function customGrad(f:Dynamic):Dynamic;
	static function valueAndGrad(f:Dynamic):Dynamic;
	static function valueAndGrads(f:Dynamic):Dynamic;
	static function variableGrads(f:Dynamic, ?varList:Dynamic):Dynamic;
	static var train:Dynamic;
	static var losses:Dynamic;
	// Performance
	static function tidy(nameOrFn:Dynamic, ?fn:Dynamic, ?gradMode:Dynamic):Dynamic;
	static function keep(result:Dynamic):Dynamic;
	static function memory():Dynamic;
	static function time(f:Dynamic):Dynamic;
	static function nextFrame():Dynamic;
	// Environment
	static function setBackend(backendType:String, ?safeMode:Bool):Void;
	static function getBackend():String;
	static var constraints:Dynamic;
	static var initializers:Dynamic;
	static var regularizers:Dynamic;
	// Visualization
	static function toPixels(img:Dynamic, ?canvas:Dynamic):Dynamic;
	static var metrics:Dynamic;
}

@:native('tf.Tensor')
extern class Tensor {
	// static function flatten():Dynamic;
	// static function asScalar():Dynamic;
	// static function as1D():Dynamic;
	// static function as2D():Dynamic;
	// static function as3D():Dynamic;
	// static function as4D():Dynamic;
}

@:native('tf.Variable')
extern class Variable {

}

@:native('tf.TensorBuffer')
extern class TensorBuffer {
	
}

@:native('tf.Model')
extern class Model {
	
}

@:native('tf.Sequential')
extern class Sequential extends Model {
	
}

@:native('tf.SymbolicTensor')
extern class SymbolicTensor {
	
}

@:native('tf.train.Optimizer')
extern class Optimizer {
	
}

@:native('tf.constraints.Constraint')
extern class Constraint {
	
}

@:native('tf.initializers.Initializer')
extern class Initializer {
	
}

#end
