.class public Lcn/yeeguo/YeeguoHttpUtils;
.super Ljava/lang/Object;
.source "YeeguoHttpUtils.java"


# static fields
.field public static final CMWAP:Ljava/lang/String; = "cmwap"

.field public static final CTWAP:Ljava/lang/String; = "ctwap"

.field public static PREFERRED_APN_URI:Landroid/net/Uri; = null

.field public static final TYPE_CM_CU_WAP:I = 0x4

.field public static final TYPE_CT_WAP:I = 0x5

.field public static final TYPE_NET_WORK_DISABLED:I = 0x0

.field public static final TYPE_OTHER_NET:I = 0x6

.field public static final TYPE_WIFI:I = 0x1

.field public static final UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final WAP_3G:Ljava/lang/String; = "3gwap"


# instance fields
.field protected connectTimeout:I

.field protected connection:Ljava/net/HttpURLConnection;

.field protected readTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/yeeguo/YeeguoHttpUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/yeeguo/YeeguoConnectionException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v7, 0x2710

    iput v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connectTimeout:I

    .line 32
    const v7, 0x493e0

    iput v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->readTimeout:I

    .line 33
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;

    .line 54
    const/4 v5, 0x0

    .line 55
    .local v5, uri:Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 56
    .end local v5           #uri:Ljava/net/URL;
    .local v6, uri:Ljava/net/URL;
    :try_start_1
    invoke-static {p1}, Lcn/yeeguo/YeeguoHttpUtils;->checkNetworkType(Landroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 58
    .local v4, type:I
    :try_start_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    .line 62
    :try_start_3
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    :try_start_4
    new-instance v3, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    const-string v9, "10.0.0.172"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 65
    .local v3, p:Ljava/net/Proxy;
    invoke-virtual {v6, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 66
    .end local v3           #p:Ljava/net/Proxy;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e1:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e1:Ljava/lang/Exception;
    .end local v4           #type:I
    :catch_2
    move-exception v0

    move-object v5, v6

    .line 80
    .end local v6           #uri:Ljava/net/URL;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #uri:Ljava/net/URL;
    :goto_1
    new-instance v7, Lcn/yeeguo/YeeguoConnectionException;

    const/16 v8, 0x64

    invoke-direct {v7, v8, v0}, Lcn/yeeguo/YeeguoConnectionException;-><init>(ILjava/lang/Throwable;)V

    throw v7

    .line 69
    .end local v5           #uri:Ljava/net/URL;
    .restart local v4       #type:I
    .restart local v6       #uri:Ljava/net/URL;
    :cond_1
    const/4 v7, 0x5

    if-ne v4, v7, :cond_0

    .line 72
    :try_start_6
    new-instance v3, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    const-string v9, "10.0.0.200"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 73
    .restart local v3       #p:Ljava/net/Proxy;
    invoke-virtual {v6, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 74
    .end local v3           #p:Ljava/net/Proxy;
    :catch_3
    move-exception v2

    .line 75
    .local v2, e2:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 79
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e2:Ljava/lang/Exception;
    .end local v4           #type:I
    .end local v6           #uri:Ljava/net/URL;
    .restart local v5       #uri:Ljava/net/URL;
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static checkNetworkType(Landroid/content/Context;)I
    .locals 15
    .parameter "mContext"

    .prologue
    const/4 v14, 0x6

    const/4 v0, 0x1

    .line 92
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 93
    .local v7, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 94
    .local v12, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 132
    .end local v7           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return v0

    .line 97
    .restart local v7       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v12       #networkInfo:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    .line 98
    .local v11, netType:I
    if-eq v11, v0, :cond_1

    .line 100
    if-nez v11, :cond_7

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/yeeguo/YeeguoHttpUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 104
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 105
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    const-string v0, "user"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, user:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    const-string v0, "ctwap"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    if-eqz v6, :cond_3

    .line 124
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 113
    .end local v13           #user:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, netMode:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 115
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 116
    const-string v0, "cmwap"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "3gwap"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "uniwap"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    :cond_5
    if-eqz v6, :cond_6

    .line 124
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 117
    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    .line 120
    .end local v10           #netMode:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 121
    .local v8, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    if-eqz v6, :cond_7

    .line 124
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    :goto_1
    move v0, v14

    .line 132
    goto :goto_0

    .line 122
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 123
    if-eqz v6, :cond_8

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_8
    throw v0

    .line 129
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v11           #netType:I
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v9

    .local v9, ex:Ljava/lang/Exception;
    move v0, v14

    .line 130
    goto :goto_0

    .line 123
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v10       #netMode:Ljava/lang/String;
    .restart local v11       #netType:I
    .restart local v12       #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    if-eqz v6, :cond_7

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public static getWebContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    .line 177
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 184
    .local v2, params:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 187
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 189
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 191
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    .local v0, content:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 206
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v5

    .line 204
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 206
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v5

    .line 204
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 205
    throw v5

    .line 204
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1
.end method

.method public static requestString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 216
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 222
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 224
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v4

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected close()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcn/yeeguo/YeeguoHttpUtils;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected setConnectTimeOut(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 141
    iput p1, p0, Lcn/yeeguo/YeeguoHttpUtils;->connectTimeout:I

    .line 142
    return-void
.end method

.method protected setReadTimeOut(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 150
    iput p1, p0, Lcn/yeeguo/YeeguoHttpUtils;->readTimeout:I

    .line 151
    return-void
.end method
