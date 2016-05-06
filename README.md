# NginHx - Haxe externs for the Nginx Lua api

This is a set of externs for [Nginx's Lua scripting api](https://github.com/openresty/lua-nginx-module).

To use it, you must have an Nginx installation compiled with Lua support.  You
also must have an up to date version of Haxe 3.3  for the new Lua
target(currently unreleaseed, but available as a
[nightly](http://hxbuilds.s3-website-us-east-1.amazonaws.com/builds/haxe/index.html)
or from [source](https://github.com/HaxeFoundation/haxe).

You can use the lua generated code in a few different ways.  Here's an
nginx.conf that executes a haxe-compiled lua script for a given location:

```
[...]
    server {
        listen       8080;
        server_name  localhost;

        location /hellolua {
            default_type 'text/plain';
            content_by_lua_file /path/to/ngx.lua;
        }
        
        [...]
   }
```

You can create a simple hello world example:

```haxe
import Ngx;
class Main {
   public static function main() {
      Ngx.say("hello from haxe!");
   }
}
```

Make sure to include the source for this library in your class path:

```hxml
-main Main
-lua ngx.lua
-cp /path/to/nginhx
```

Note that Nginx will cache the lua code the first time it is loaded.  If you're
doing development work, you may want to avoid this by setting the [appropriate
config](https://github.com/openresty/lua-nginx-module#lua_code_cache).

