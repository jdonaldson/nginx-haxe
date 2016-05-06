import haxe.extern.Rest;
import lua.Table;

@:native("ngx")
extern class Ngx {
    /**
      When this is used in the context of the set_by_lua or set_by_lua_file
      directives, this table is read-only and holds the input arguments to the
      config directives.
     **/
    public static var arg : Table<String,Dynamic>;
    /**
      Read and write Nginx variable values.
    **/
    @:native("ngx.var") public static var _var : Table<String,Dynamic>;

    /**
      The ngx.null constant is a NULL light userdata usually used to represent nil
      values in Lua tables etc and is similar to the lua-cjson library's cjson.null
      constant. This constant was first introduced in the v0.5.0rc5 release.
     **/
    @:native("ngx.null") public static var _null : Int;

    /**
      This table can be used to store per-request Lua context data and has a life
      time identical to the current request (as with the Nginx variables).
    **/
    public static var ctx : Table<Dynamic,Dynamic>;

    /**
      Read and write the current request's response status. This should be called
      before sending out the response headers.
    **/
    public static var status : HttpStatus;

    /**
      Just as ngx.print but also emit a trailing newline.
    **/
    public static function say(arg : String) : Void;

    /**
      Log arguments concatenated to error.log with the given logging level.
    **/
    public static function log(level : LogLevel, args : Rest<Dynamic>) : Void;

    /**
      Emits arguments concatenated to the HTTP client (as response body). If
      response headers have not been sent, this function will send headers out
      first and then output body data.
    **/
    public static function print(args : Rest<Dynamic>) : Void;
}

