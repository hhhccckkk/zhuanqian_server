.class final Lcn/aow/android/c$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/aow/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcn/aow/android/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcn/aow/android/c$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcn/aow/android/c$b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcn/aow/android/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/aow/android/c$1;->b:Ljava/io/File;

    iput-object p3, p0, Lcn/aow/android/c$1;->c:Lcn/aow/android/c$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .parameter

    .prologue
    .line 33
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 34
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcn/aow/android/c$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 41
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcn/aow/android/c$1;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    const/16 v1, 0x400

    new-array v5, v1, [B

    .line 47
    const/4 v1, -0x1

    .line 48
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 49
    add-int/2addr v1, v6

    .line 50
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int/lit8 v10, v1, 0x64

    int-to-long v10, v10

    div-long/2addr v10, v3

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcn/aow/android/c$1;->publishProgress([Ljava/lang/Object;)V

    .line 52
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 62
    :goto_1
    return-object v0

    .line 55
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcn/aow/android/c$1;->c:Lcn/aow/android/c$b;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/aow/android/c$1;->c:Lcn/aow/android/c$b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/aow/android/c$b;->a(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method protected varargs b([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcn/aow/android/c$1;->c:Lcn/aow/android/c$b;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/aow/android/c$1;->c:Lcn/aow/android/c$b;

    invoke-interface {v0, p1}, Lcn/aow/android/c$b;->a([Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/aow/android/c$1;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/aow/android/c$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcn/aow/android/c$1;->b([Ljava/lang/String;)V

    return-void
.end method
