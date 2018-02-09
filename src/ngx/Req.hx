package ngx;

import lua.Table;

@:native("ngx.req")
extern class Req {
    /**
      Returns a boolean indicating whether the current request is an "internal
      request", i.e., a request initiated from inside the current nginx server
      instead of from the client side.
     **/
    public static function is_internal()  : Bool;

    /**
      Returns a floating-point number representing the timestamp (including
      milliseconds as the decimal part) when the current request was created.
     **/
    public static function start_time()   : Float;

    /**
      Returns the HTTP version number for the current request as a Lua number.
     **/
    public static function http_version() : Float;

    /**
      Returns the original raw HTTP protocol header received by the Nginx server.
     **/
    public static function raw_header() : String;

    /**
      Retrieves the current request's request method name. Strings like "GET"
      and "POST" are returned instead of numerical method constants.
     **/
    public static function get_method() : String;

    /**
      Overrides the current request's request method with the method_id
      argument. Currently only numerical method constants are supported, like
      ngx.HTTP_POST and ngx.HTTP_GET.
     **/
    public static function set_method(method_id : HttpMethod) : Void;

    /**
      Rewrite the current request's (parsed) URI by the uri argument. The uri
      argument must be a Lua string and cannot be of zero length, or a Lua
      exception will be thrown.

      The jump argument can only be set to true in rewrite_by_lua and
      rewrite_by_lua_file. Use of jump in other contexts is prohibited and will throw
      out a Lua exception.
     **/
    public static function set_uri(uri:String, ?jump : Bool) : Void;

    /**
      Rewrite the current request's URI query arguments by the args argument.
      The args argument can be either a Lua string, or a Lua table holding the
      query arguments' key-value pairs.
     **/
    public static function set_uri_args(args : Dynamic) : Void;

    /**
      Returns a Lua table holding all the current request URL query arguments.
     **/
    public static function get_uri_args(?max_args : Int) : Table<String, String>;

    /**
      Returns a Lua table holding all the current request POST query arguments
      (of the MIME type application/x-www-form-urlencoded). Call
      ngx.req.read_body to read the request body first or turn on the
      lua_need_request_body directive to avoid errors.
     **/
    public static function get_post_args(?max_args : Int) : Table<String, String>;

    /**
      Returns a Lua table holding all the current request header
     **/
    public static function get_headers(?max_headers : Int, ?raw : Bool) : Table<String, String>;

    /**
      Set the current request's request header named header_name to value
      header_value, overriding any existing ones.
     **/
    public static function set_header(header_name : String, header_value : String) : Void;

    /**
      Clears the current request's request header named header_name. None of
      the current request's existing subrequests will be affected but
      subsequently initiated subrequests will inherit the change by default.
     **/
    public static function clear_header(header_name : String) : Void;

    /**
      Reads the client request body synchronously without blocking the Nginx
      event loop.
     **/
    public static function read_body() : String;

    /**
      Explicitly discard the request body, i.e., read the data on the
      connection and throw it away immediately (without using the request body
      by any means).
     **/
    public static function discard_body() : Void;

    /**
      Retrieves in-memory request body data. It returns a Lua string rather
      than a Lua table holding all the parsed query arguments. Use the
      ngx.req.get_post_args function instead if a Lua table is required.
     **/
    public static function get_body_data() : String;

    /**
      Retrieves the file name for the in-file request body data. Returns nil if
      the request body has not been read or has been read into memory.
     **/
    public static function get_body_file() : String;

    /**
      Set the current request's request body using the in-memory data specified
      by the data argument.
     **/
    public static function set_body_data(data : String) : Void;

    /**
      Set the current request's request body using the in-file data specified
      by the file_name argument.

      If the optional auto_clean argument is given a true value, then this file will
      be removed at request completion or the next time this function or
      ngx.req.set_body_data are called in the same request. The auto_clean is default
      to false.
     **/
    public static function set_body_file(file_name : String, ?auto_clean : Bool) : Void;

    /**
      Creates a new blank request body for the current request and inializes
      the buffer for later request body data writing via the
      ngx.req.append_body and ngx.req.finish_body APIs.
     **/
    public static function init_body(?buffer_size : Int) : Void;

    /**
      Append new data chunk specified by the data_chunk argument onto the
      existing request body created by the ngx.req.init_body call.
     **/
    public static function append_body(data_chunk : String) : Void;

    /**
      Completes the construction process of the new request body created by the
      ngx.req.init_body and ngx.req.append_body calls.
     **/
    public static function finish_body() : Void;

    /**
      Returns a read-only cosocket object that wraps the downstream connection.
      Only receive and receiveuntil methods are supported on this object.
     **/
    // public static function socket() : Cosocket;
}
