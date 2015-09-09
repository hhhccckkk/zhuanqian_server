.class public Lcom/hck/httpserver/JsonHttpResponseHandler;
.super Lcom/hck/httpserver/HCKHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/hck/httpserver/HCKHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 174
    if-eqz p2, :cond_2

    .line 175
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, jsonResponse:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 177
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 189
    :goto_0
    return-void

    .line 178
    .restart local v1       #jsonResponse:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 179
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, ex:Lorg/json/JSONException;
    invoke-virtual {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v0           #ex:Lorg/json/JSONException;
    .restart local v1       #jsonResponse:Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 138
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/hck/httpserver/HCKHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 146
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 141
    .local v0, response:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/hck/httpserver/JsonHttpResponseHandler;->handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(I[Lorg/apache/http/Header;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "jsonResponse"
    .parameter "url"

    .prologue
    .line 149
    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 150
    check-cast p3, Lorg/json/JSONObject;

    .end local p3
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 151
    .restart local p3
    .restart local p4
    :cond_0
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 152
    check-cast p3, Lorg/json/JSONArray;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 154
    .restart local p3
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 110
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "e"
    .parameter "errorResponse"

    .prologue
    .line 109
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 107
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 83
    invoke-virtual {p0, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 84
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    .line 96
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"
    .parameter "url"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 73
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 61
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 54
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 162
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .end local v0           #result:Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    .line 166
    move-object v0, p1

    .line 168
    :cond_2
    return-object v0
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "url"

    .prologue
    const/16 v7, 0x64

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    const/16 v2, 0xcc

    if-eq p1, v2, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, jsonResponse:Ljava/lang/Object;
    const/16 v2, 0x64

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v0, p3}, Lcom/hck/httpserver/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p4, v2, v5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
