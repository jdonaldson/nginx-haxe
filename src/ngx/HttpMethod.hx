package ngx;

@:native("ngx")
extern enum HttpMethod {
    HTTP_GET;
    HTTP_HEAD;
    HTTP_PUT;
    HTTP_POST;
    HTTP_DELETE;
    HTTP_OPTIONS;
    HTTP_MKCOL;
    HTTP_COPY;
    HTTP_MOVE;
    HTTP_PROPFIND;
    HTTP_PROPPATCH;
    HTTP_LOCK;
    HTTP_UNLOCK;
    HTTP_PATCH;
    HTTP_TRACE;
}
