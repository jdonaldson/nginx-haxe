import lua.Table;

@:native("ngx.header")
extern class Header extends Table<String,Dynamic> {
    public static var content_type : String;
}
