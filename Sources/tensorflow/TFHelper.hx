package tensorflow;

#if js

class TFHelper {
	public static function init(done:Void->Void) {
		#if kha_krom
		kha.Assets.loadBlobFromPath("krom_tfjs.js", function(b:kha.Blob) {
		#else
		kha.Assets.loadBlobFromPath("tfjs.js", function(b:kha.Blob) {
		#end
			untyped __js__("(1, eval)({0})", b.toString());
			done();
		});
	}
}

#end
