package tensorflow;

#if js

@:native('tf')
extern class TF {
	static function sequential():Dynamic;
	static function tensor2d(a:Array<Float>, b:Array<Int>):Dynamic;
	static var layers:Dynamic;
}

#end
