.class Lcn/yeeguo/YeeguoPostHttp;
.super Lcn/yeeguo/YeeguoHttpUtils;
.source "YeeguoPostHttp.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/yeeguo/YeeguoHttpUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const-class v0, Lcn/yeeguo/YeeguoPostHttp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yeeguo/YeeguoPostHttp;->TAG:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcn/yeeguo/YeeguoPostHttp;->url:Ljava/lang/String;

    .line 31
    const/16 v0, 0x4e20

    iput v0, p0, Lcn/yeeguo/YeeguoPostHttp;->connectTimeout:I

    .line 32
    const v0, 0xc350

    iput v0, p0, Lcn/yeeguo/YeeguoPostHttp;->readTimeout:I

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcn/yeeguo/YeeguoHttpUtils;->close()V

    .line 109
    return-void
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "params"

    .prologue
    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v9, result:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 44
    .local v5, out:Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 45
    .local v7, reader:Ljava/io/BufferedReader;
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_4

    .line 47
    :try_start_0
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcn/yeeguo/YeeguoPostHttp;->url:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/yeeguo/YeeguoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 50
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Charset"

    const-string v12, "UTF-8"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 52
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 53
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Content-Type"

    .line 55
    const-string v12, "application/x-www-form-urlencoded"

    .line 54
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    iget v11, p0, Lcn/yeeguo/YeeguoPostHttp;->connectTimeout:I

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    iget v11, p0, Lcn/yeeguo/YeeguoPostHttp;->readTimeout:I

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 59
    new-instance v6, Ljava/io/DataOutputStream;

    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 61
    .end local v5           #out:Ljava/io/DataOutputStream;
    .local v6, out:Ljava/io/DataOutputStream;
    :try_start_1
    const-string v10, "UTF-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 62
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 64
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 68
    .local v2, isr:Ljava/io/InputStreamReader;
    :try_start_2
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 69
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 70
    .end local v2           #isr:Ljava/io/InputStreamReader;
    .local v3, isr:Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    .line 71
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_4
    const-string v4, ""

    .line 72
    .local v4, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    if-nez v4, :cond_5

    .line 78
    if-eqz v3, :cond_0

    .line 79
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 80
    :cond_0
    if-eqz v1, :cond_d

    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-object v7, v8

    .line 87
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 89
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 93
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 95
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 99
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoPostHttp;->close()V

    move-object v5, v6

    .line 102
    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :cond_4
    :goto_4
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/yeeguo/YeeguoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 73
    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_8
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 75
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    move-object v7, v8

    .line 76
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_5
    :try_start_9
    iget-object v10, p0, Lcn/yeeguo/YeeguoPostHttp;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/yeeguo/YeeguoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 78
    if-eqz v2, :cond_6

    .line 79
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 80
    :cond_6
    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v10

    move-object v5, v6

    .line 87
    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :goto_6
    if-eqz v7, :cond_7

    .line 89
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 93
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 95
    :try_start_c
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 99
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoPostHttp;->close()V

    goto :goto_4

    .line 77
    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v10

    .line 78
    :goto_9
    if-eqz v2, :cond_9

    .line 79
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 80
    :cond_9
    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_a
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 86
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #isr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .line 87
    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :goto_a
    if-eqz v7, :cond_b

    .line 89
    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 93
    :cond_b
    :goto_b
    if-eqz v5, :cond_c

    .line 95
    :try_start_f
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 99
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoPostHttp;->close()V

    .line 100
    throw v10

    .line 90
    :catch_2
    move-exception v10

    goto :goto_7

    .line 96
    :catch_3
    move-exception v10

    goto :goto_8

    .line 90
    :catch_4
    move-exception v11

    goto :goto_b

    .line 96
    :catch_5
    move-exception v11

    goto :goto_c

    .line 90
    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v10

    goto :goto_2

    .line 96
    :catch_7
    move-exception v10

    goto :goto_3

    .line 86
    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v10

    goto :goto_a

    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    goto :goto_a

    .line 85
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_8
    move-exception v10

    goto :goto_6

    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    goto :goto_6

    .line 77
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v10

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    goto :goto_9

    .end local v2           #isr:Ljava/io/InputStreamReader;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_5
    move-exception v10

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_9

    .line 75
    :catch_a
    move-exception v0

    goto :goto_5

    .end local v2           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3           #isr:Ljava/io/InputStreamReader;
    .restart local v2       #isr:Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v2           #isr:Ljava/io/InputStreamReader;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_d
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method
