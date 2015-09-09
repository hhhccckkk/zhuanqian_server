.class public Lcom/hck/httpserver/HCKHttpResponseHandler;
.super Ljava/lang/Object;
.source "HCKHttpResponseHandler.java"


# static fields
.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/hck/httpserver/HCKHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/hck/httpserver/HCKHttpResponseHandler$1;-><init>(Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    iput-object v0, p0, Lcom/hck/httpserver/HCKHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 227
    .local v0, response:[Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 229
    :pswitch_0
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 230
    aget-object v1, v0, v3

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 231
    const/4 v3, 0x3

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    .line 229
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_1
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_2
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onStart(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_3
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "url"

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "responseMessage"
    .parameter "response"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/hck/httpserver/HCKHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 259
    iput p1, v0, Landroid/os/Message;->what:I

    .line 260
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 113
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 106
    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "content"
    .parameter "requestUrl"

    .prologue
    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "content"
    .parameter "requestUrl"

    .prologue
    .line 138
    invoke-virtual {p0, p1, p3, p4}, Lcom/hck/httpserver/HCKHttpResponseHandler;->onSuccess(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "content"
    .parameter "requestUrl"

    .prologue
    .line 123
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 193
    aput-object p2, v0, v2

    .line 192
    invoke-virtual {p0, v2, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 198
    aput-object p2, v0, v2

    .line 197
    invoke-virtual {p0, v2, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 199
    return-void
.end method

.method protected sendFinishMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 206
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 207
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/hck/httpserver/HCKHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 9
    .parameter "response"
    .parameter "url"

    .prologue
    .line 267
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 268
    .local v4, status:Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 271
    .local v3, responseBody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 272
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 273
    .local v5, temp:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 274
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 281
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #temp:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    .line 282
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    .line 283
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 282
    invoke-virtual {p0, v6, v3}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 289
    :goto_1
    return-void

    .line 277
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 287
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 286
    invoke-virtual {p0, v6, v7, v3, p2}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #temp:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method

.method protected sendStartMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 203
    return-void
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 188
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 187
    invoke-virtual {p0, v2, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hck/httpserver/HCKHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 189
    return-void
.end method
