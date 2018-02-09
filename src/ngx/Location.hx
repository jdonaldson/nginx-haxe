package ngx;

@:native("ngx.location")
extern class Location {
    public static function capture(uri : String, ?options : Dynamic<Dynamic>) : Response;
    public static function capture_multi(uri : String, ?options : Dynamic<Dynamic>) : Response;
}
