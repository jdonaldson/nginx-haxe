package ngx;

@:native("ngx")
@:enum extern abstract HttpStatus(Int) {
    var HTTP_CONTINUE : Int;
    var HTTP_SWITCHING_PROTOCOLS : Int;
    var HTTP_OK : Int;
    var HTTP_CREATED : Int;
    var HTTP_ACCEPTED : Int;
    var HTTP_NO_CONTENT : Int;
    var HTTP_PARTIAL_CONTENT : Int;
    var HTTP_SPECIAL_RESPONSE : Int;
    var HTTP_MOVED_PERMANENTLY : Int;
    var HTTP_MOVED_TEMPORARILY : Int;
    var HTTP_SEE_OTHER : Int;
    var HTTP_NOT_MODIFIED : Int;
    var HTTP_TEMPORARY_REDIRECT : Int;
    var HTTP_BAD_REQUEST : Int;
    var HTTP_UNAUTHORIZED : Int;
    var HTTP_PAYMENT_REQUIRED : Int;
    var HTTP_FORBIDDEN : Int;
    var HTTP_NOT_FOUND : Int;
    var HTTP_NOT_ALLOWED : Int;
    var HTTP_NOT_ACCEPTABLE : Int;
    var HTTP_REQUEST_TIMEOUT : Int;
    var HTTP_CONFLICT : Int;
    var HTTP_GONE : Int;
    var HTTP_UPGRADE_REQUIRED : Int;
    var HTTP_TOO_MANY_REQUESTS : Int;
    var HTTP_CLOSE : Int;
    var HTTP_ILLEGAL : Int;
    var HTTP_INTERNAL_SERVER_ERROR : Int;
    var HTTP_METHOD_NOT_IMPLEMENTED : Int;
    var HTTP_BAD_GATEWAY : Int;
    var HTTP_SERVICE_UNAVAILABLE : Int;
    var HTTP_GATEWAY_TIMEOUT : Int;
    var HTTP_VERSION_NOT_SUPPORTED : Int;
    var HTTP_INSUFFICIENT_STORAGE : Int;
}
