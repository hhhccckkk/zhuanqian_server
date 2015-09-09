.class public Lcom/mob/tools/network/NetworkHelper;
.super Ljava/lang/Object;


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilePost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;
    .locals 13
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, boundary:Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v7, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "multipart/form-data; boundary="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/mob/tools/network/MultiPart;

    invoke-direct {v6}, Lcom/mob/tools/network/MultiPart;-><init>()V

    .local v6, mp:Lcom/mob/tools/network/MultiPart;
    new-instance v8, Lcom/mob/tools/network/StringPart;

    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v8, sp:Lcom/mob/tools/network/StringPart;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .local v9, value:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    iget-object v12, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\"\r\n\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    iget-object v10, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    goto :goto_0

    .end local v9           #value:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .local v1, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8           #sp:Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8       #sp:Lcom/mob/tools/network/StringPart;
    new-instance v4, Ljava/io/File;

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, imageFile:Ljava/io/File;
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    iget-object v12, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\"; filename=\""

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\"\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v12

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, mime:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    :cond_1
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "jpg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "jpeg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const-string v5, "image/jpeg"

    :cond_3
    :goto_2
    const-string v10, "Content-Type: "

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v12, "\r\n\r\n"

    invoke-virtual {v10, v12}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v6, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    new-instance v3, Lcom/mob/tools/network/FilePart;

    invoke-direct {v3}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v3, fp:Lcom/mob/tools/network/FilePart;
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8           #sp:Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8       #sp:Lcom/mob/tools/network/StringPart;
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v6, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    goto/16 :goto_1

    .end local v3           #fp:Lcom/mob/tools/network/FilePart;
    :cond_4
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "png"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v5, "image/png"

    goto :goto_2

    :cond_5
    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "gif"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v5, "image/gif"

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v10, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v2, fis:Ljava/io/FileInputStream;
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    :cond_7
    const-string v5, "application/octet-stream"

    goto :goto_2

    .end local v1           #file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #imageFile:Ljava/io/File;
    .end local v5           #mime:Ljava/lang/String;
    :cond_8
    new-instance v8, Lcom/mob/tools/network/StringPart;

    .end local v8           #sp:Lcom/mob/tools/network/StringPart;
    invoke-direct {v8}, Lcom/mob/tools/network/StringPart;-><init>()V

    .restart local v8       #sp:Lcom/mob/tools/network/StringPart;
    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v10

    const-string v11, "--\r\n"

    invoke-virtual {v10, v11}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v6, v8}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    invoke-virtual {v6}, Lcom/mob/tools/network/MultiPart;->getBufferedHttpEntity()Lorg/apache/http/entity/BufferedHttpEntity;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v7
.end method

.method private getSSLHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .local v4, trustStore:Ljava/security/KeyStore;
    invoke-virtual {v4, v6, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v3, Lcom/mob/tools/network/SSLSocketFactoryEx;

    invoke-direct {v3, v4}, Lcom/mob/tools/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .local v3, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v5
.end method

.method private getTextPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    new-instance v2, Lcom/mob/tools/network/StringPart;

    invoke-direct {v2}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v2, sp:Lcom/mob/tools/network/StringPart;
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    invoke-virtual {v2}, Lcom/mob/tools/network/StringPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v0

    .local v0, entity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .end local v0           #entity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v2           #sp:Lcom/mob/tools/network/StringPart;
    :cond_0
    return-object v1
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/network/KVPair;

    .local v3, value:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, encodedName:Ljava/lang/String;
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, encodedValue:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1           #encodedValue:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .end local v0           #encodedName:Ljava/lang/String;
    .end local v3           #value:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 30
    .parameter "context"
    .parameter "url"
    .parameter "cacheFolder"
    .parameter "skipIfCached"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "downloading: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p4, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, path:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, cache:Ljava/io/File;
    if-eqz p4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "use time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    :goto_0
    return-object v26

    .end local v3           #cache:Ljava/io/File;
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #path:Ljava/lang/String;
    :cond_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v9, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .local v4, client:Lorg/apache/http/client/HttpClient;
    const-string v26, "https://"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    :goto_1
    invoke-interface {v4, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .local v19, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .local v20, status:I
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const/4 v15, 0x0

    .restart local v15       #name:Ljava/lang/String;
    const-string v26, "Content-Disposition"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .local v10, headers:[Lorg/apache/http/Header;
    if-eqz v10, :cond_3

    array-length v0, v10

    move/from16 v26, v0

    if-lez v26, :cond_3

    const/16 v26, 0x0

    aget-object v26, v10, v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    .local v25, value:Ljava/lang/String;
    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, parts:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v26

    .local v16, part:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, "filename"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    const-string v28, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v15, v28, v29

    const-string v28, "\""

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    const-string v28, "\""

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    const/16 v28, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #part:Ljava/lang/String;
    .end local v17           #parts:[Ljava/lang/String;
    .end local v19           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #status:I
    .end local v25           #value:Ljava/lang/String;
    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v4           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v4       #client:Lorg/apache/http/client/HttpClient;
    goto/16 :goto_1

    .restart local v10       #headers:[Lorg/apache/http/Header;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v19       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #status:I
    :cond_3
    if-nez v15, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v26, "Content-Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v26, v0

    if-lez v26, :cond_5

    const/16 v26, 0x0

    aget-object v26, v10, v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .restart local v25       #value:Ljava/lang/String;
    const-string v26, "image/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "image/"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .local v24, type:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "jpeg"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string v24, "jpg"

    .end local v24           #type:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .end local v25           #value:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #cache:Ljava/io/File;
    if-eqz p4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "use time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .end local v3           #cache:Ljava/io/File;
    .end local v18           #path:Ljava/lang/String;
    .restart local v25       #value:Ljava/lang/String;
    :cond_6
    const/16 v26, 0x2f

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .local v11, index:I
    const/4 v13, 0x0

    .local v13, lastPart:Ljava/lang/String;
    if-lez v11, :cond_7

    add-int/lit8 v26, v11, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_7
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_5

    const/16 v26, 0x2e

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .local v5, dot:I
    if-lez v5, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v5

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .end local v5           #dot:I
    .end local v11           #index:I
    .end local v13           #lastPart:Ljava/lang/String;
    .end local v25           #value:Ljava/lang/String;
    .restart local v3       #cache:Ljava/io/File;
    .restart local v18       #path:Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .local v12, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v8, fos:Ljava/io/FileOutputStream;
    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v2, v0, [B

    .local v2, buf:[B
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, len:I
    :goto_4
    if-lez v14, :cond_b

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    goto :goto_4

    :cond_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "use time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .end local v2           #buf:[B
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #len:I
    :catch_0
    move-exception v21

    .local v21, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_c
    throw v21

    .end local v3           #cache:Ljava/io/File;
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v15           #name:Ljava/lang/String;
    .end local v18           #path:Ljava/lang/String;
    .end local v21           #t:Ljava/lang/Throwable;
    :cond_d
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v26

    const-string v27, "utf-8"

    invoke-static/range {v26 .. v27}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, error:Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v26, "error"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v26, "status"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v26, Ljava/lang/Throwable;

    new-instance v27, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v27 .. v27}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v26
.end method

.method public getHttpPostResponse(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 18
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .local v11, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPost: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v14, :cond_0

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/mob/tools/network/NetworkHelper;->getFilePost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v9

    .end local v4           #files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/network/KVPair;

    .local v5, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v5, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v14, v5, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v5           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/mob/tools/network/NetworkHelper;->getTextPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v9

    .restart local v9       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    :cond_1
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v6, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v14, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v6, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v14, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    invoke-static {v6, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mob/tools/network/KVPair;

    .local v8, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/4 v13, 0x0

    .local v13, timeOut:I
    :try_start_0
    iget-object v15, v8, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    iget-object v15, v8, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v6, v15, v13}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_2

    :catch_0
    move-exception v10

    .local v10, t:Ljava/lang/Throwable;
    goto :goto_2

    .end local v8           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v10           #t:Ljava/lang/Throwable;
    .end local v13           #timeOut:I
    :cond_2
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v3, 0x0

    .local v3, client:Lorg/apache/http/client/HttpClient;
    const-string v14, "https://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    :goto_3
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .local v7, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lorg/apache/http/HttpResponse;)V

    :cond_3
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "use time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .end local v7           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_3
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 21
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "httpGet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .local v8, param:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v8           #param:Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v7, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v17, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v17, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .local v9, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/16 v16, 0x0

    .local v16, timeOut:I
    :try_start_0
    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    :catch_0
    move-exception v13

    .local v13, t:Ljava/lang/Throwable;
    goto :goto_1

    .end local v9           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v13           #t:Ljava/lang/Throwable;
    .end local v16           #timeOut:I
    :cond_2
    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    .local v2, client:Lorg/apache/http/client/HttpClient;
    const-string v17, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    :goto_2
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .local v12, status:I
    const/4 v10, 0x0

    .local v10, resp:Ljava/lang/String;
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    const-string v18, "utf-8"

    invoke-static/range {v17 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "use time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v14

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v10

    .end local v10           #resp:Ljava/lang/String;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #status:I
    :cond_3
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .restart local v10       #resp:Ljava/lang/String;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #status:I
    :cond_4
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    const-string v18, "utf-8"

    invoke-static/range {v17 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, error:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "status"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v17, Ljava/lang/Throwable;

    new-instance v18, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v18 .. v18}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public httpHead(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .local v13, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpHead: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .local v9, param:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v9           #param:Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .local v4, head:Lorg/apache/http/client/methods/HttpHead;
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpHead;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v7, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v16, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v16, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/network/KVPair;

    .local v10, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/4 v15, 0x0

    .local v15, timeOut:I
    :try_start_0
    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v15}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    :catch_0
    move-exception v12

    .local v12, t:Ljava/lang/Throwable;
    goto :goto_1

    .end local v10           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v12           #t:Ljava/lang/Throwable;
    .end local v15           #timeOut:I
    :cond_2
    invoke-virtual {v4, v7}, Lorg/apache/http/client/methods/HttpHead;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    .local v2, client:Lorg/apache/http/client/HttpClient;
    const-string v16, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    :goto_2
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, header:[Lorg/apache/http/Header;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_4

    array-length v0, v5

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v3, v5, v16

    .local v3, h:Lorg/apache/http/Header;
    new-instance v18, Lcom/mob/tools/network/KVPair;

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .end local v3           #h:Lorg/apache/http/Header;
    .end local v5           #header:[Lorg/apache/http/Header;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .restart local v5       #header:[Lorg/apache/http/Header;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "use time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v13

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v8
.end method

.method public httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter
    .parameter
    .parameter "offset"
    .parameter
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .local v12, tmpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Lcom/mob/tools/network/NetworkHelper$2;

    invoke-direct {v9, p0, v12}, Lcom/mob/tools/network/NetworkHelper$2;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    .local v9, callback:Lcom/mob/tools/network/HttpResponseCallback;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/mob/tools/network/NetworkHelper;->httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;)V

    const-string v0, "status"

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .local v11, status:I
    const-string v0, "resp"

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, resp:Ljava/lang/String;
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_0

    return-object v10

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v10}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public httpPatch(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/OnReadListener;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 19
    .parameter "url"
    .parameter
    .parameter
    .parameter "offset"
    .parameter
    .parameter
    .parameter "listener"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;",
            "Lcom/mob/tools/network/OnReadListener;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p6, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPatch: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .local v8, param:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v8           #param:Ljava/lang/String;
    :cond_0
    new-instance v10, Lcom/mob/tools/network/HttpPatch;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/mob/tools/network/HttpPatch;-><init>(Ljava/lang/String;)V

    .local v10, patch:Lcom/mob/tools/network/HttpPatch;
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/network/KVPair;

    .local v5, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v5, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v15, v5, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Lcom/mob/tools/network/HttpPatch;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Lcom/mob/tools/network/FilePart;

    invoke-direct {v4}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v4, fp:Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Lcom/mob/tools/network/FilePart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v4, v15}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Lcom/mob/tools/network/FilePart;->setOffset(J)V

    invoke-virtual {v4}, Lcom/mob/tools/network/FilePart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v3

    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v15, "application/offset+octet-stream"

    invoke-virtual {v3, v15}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/mob/tools/network/HttpPatch;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v6, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v15, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v6, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v15, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    invoke-static {v6, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .local v9, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/4 v14, 0x0

    .local v14, timeOut:I
    :try_start_0
    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v14}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    :catch_0
    move-exception v11

    .local v11, t:Ljava/lang/Throwable;
    goto :goto_1

    .end local v9           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v11           #t:Ljava/lang/Throwable;
    .end local v14           #timeOut:I
    :cond_2
    invoke-virtual {v10, v6}, Lcom/mob/tools/network/HttpPatch;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    .local v2, client:Lorg/apache/http/client/HttpClient;
    const-string v15, "https://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    :goto_2
    invoke-interface {v2, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .local v7, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    invoke-interface {v0, v7}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lorg/apache/http/HttpResponse;)V

    :cond_3
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "use time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .end local v7           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 15
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpPost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    invoke-direct/range {p0 .. p3}, Lcom/mob/tools/network/NetworkHelper;->getFilePost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/KVPair;

    .local v2, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v13, v2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v13, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/mob/tools/network/NetworkHelper;->getTextPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v3, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v11, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v3, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v11, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    invoke-static {v3, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before set SO_TIMEOUT :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "http.socket.timeout"

    sget v14, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    invoke-virtual {v3, v13, v14}, Lorg/apache/http/params/BasicHttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before set CONNECTION_TIMEOUT :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "http.connection.timeout"

    sget v14, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    invoke-virtual {v3, v13, v14}, Lorg/apache/http/params/BasicHttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/network/KVPair;

    .local v5, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/4 v10, 0x0

    .local v10, timeOut:I
    :try_start_0
    iget-object v12, v5, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    iget-object v12, v5, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v12, v10}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_2

    :catch_0
    move-exception v7

    .local v7, t:Ljava/lang/Throwable;
    goto :goto_2

    .end local v5           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v7           #t:Ljava/lang/Throwable;
    .end local v10           #timeOut:I
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before set SO_TIMEOUT :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "http.socket.timeout"

    sget v14, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    invoke-virtual {v3, v13, v14}, Lorg/apache/http/params/BasicHttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before set CONNECTION_TIMEOUT :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "http.connection.timeout"

    sget v14, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    invoke-virtual {v3, v13, v14}, Lorg/apache/http/params/BasicHttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v1, 0x0

    .local v1, client:Lorg/apache/http/client/HttpClient;
    const-string v11, "https://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    :goto_3
    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz p6, :cond_3

    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "use time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_4
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v7

    .restart local v7       #t:Ljava/lang/Throwable;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v7
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, tmpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$1;

    invoke-direct {v6, p0, v7}, Lcom/mob/tools/network/NetworkHelper$1;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;)V

    const-string v0, "resp"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 23
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, file:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    .local p4, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "httpPut: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    .local v10, param:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v10           #param:Ljava/lang/String;
    :cond_0
    new-instance v12, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .local v12, put:Lorg/apache/http/client/methods/HttpPut;
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/network/KVPair;

    .local v7, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Lcom/mob/tools/network/FilePart;

    invoke-direct {v6}, Lcom/mob/tools/network/FilePart;-><init>()V

    .local v6, fp:Lcom/mob/tools/network/FilePart;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/mob/tools/network/FilePart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v3

    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v19, "application/octet-stream"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v8, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v19, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    move/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v19, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    move/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mob/tools/network/KVPair;

    .local v11, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/16 v18, 0x0

    .local v18, timeOut:I
    :try_start_0
    iget-object v0, v11, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    iget-object v0, v11, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    :catch_0
    move-exception v15

    .local v15, t:Ljava/lang/Throwable;
    goto :goto_1

    .end local v11           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v15           #t:Ljava/lang/Throwable;
    .end local v18           #timeOut:I
    :cond_2
    invoke-virtual {v12, v8}, Lorg/apache/http/client/methods/HttpPut;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    .local v2, client:Lorg/apache/http/client/HttpClient;
    const-string v19, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    :goto_2
    invoke-interface {v2, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .local v9, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .local v14, status:I
    const/4 v13, 0x0

    .local v13, resp:Ljava/lang/String;
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v14, v0, :cond_3

    const/16 v19, 0xc9

    move/from16 v0, v19

    if-ne v14, v0, :cond_5

    :cond_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    const-string v20, "utf-8"

    invoke-static/range {v19 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "use time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v13

    .end local v9           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v13           #resp:Ljava/lang/String;
    .end local v14           #status:I
    :cond_4
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .restart local v9       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v13       #resp:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_5
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    const-string v20, "utf-8"

    invoke-static/range {v19 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, error:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "status"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v19, Ljava/lang/Throwable;

    new-instance v20, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v20 .. v20}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 23
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<*>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "jsonPost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v11, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lcom/mob/tools/network/StringPart;

    invoke-direct {v13}, Lcom/mob/tools/network/StringPart;-><init>()V

    .local v13, sp:Lcom/mob/tools/network/StringPart;
    if-eqz p2, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/network/KVPair;

    .local v9, p:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v9, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v9           #p:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_0
    new-instance v19, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v19 .. v19}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .end local v4           #errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v13}, Lcom/mob/tools/network/StringPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v3

    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v19, "application/json"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mob/tools/network/KVPair;

    .local v6, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v6           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .local v7, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v19, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    move/from16 v0, v19

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v19, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    move/from16 v0, v19

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mob/tools/network/KVPair;

    .local v10, param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    const/16 v18, 0x0

    .local v18, timeOut:I
    :try_start_0
    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    iget-object v0, v10, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_2

    :catch_0
    move-exception v15

    .local v15, t:Ljava/lang/Throwable;
    goto :goto_2

    .end local v10           #param:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<*>;"
    .end local v15           #t:Ljava/lang/Throwable;
    .end local v18           #timeOut:I
    :cond_3
    invoke-virtual {v11, v7}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const/4 v2, 0x0

    .local v2, client:Lorg/apache/http/client/HttpClient;
    const-string v19, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    :goto_3
    invoke-interface {v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .local v8, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .local v14, status:I
    const/4 v12, 0x0

    .local v12, resp:Ljava/lang/String;
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v14, v0, :cond_4

    const/16 v19, 0xc9

    move/from16 v0, v19

    if-ne v14, v0, :cond_6

    :cond_4
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    const-string v20, "utf-8"

    invoke-static/range {v19 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "use time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v16

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v12

    .end local v8           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #resp:Ljava/lang/String;
    .end local v14           #status:I
    :cond_5
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v2       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .restart local v8       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #resp:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_6
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    const-string v20, "utf-8"

    invoke-static/range {v19 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, error:Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4       #errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "status"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v19, Ljava/lang/Throwable;

    new-instance v20, Lcom/mob/tools/utils/Hashon;

    invoke-direct/range {v20 .. v20}, Lcom/mob/tools/utils/Hashon;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;)V
    .locals 9
    .parameter "url"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v0, 0x0

    .local v0, client:Lorg/apache/http/client/HttpClient;
    const-string v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    :goto_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .local v6, status:I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    if-eqz p2, :cond_0

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .local v4, is:Ljava/io/InputStream;
    invoke-interface {p2, v4}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V

    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #status:I
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #status:I
    :cond_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, error:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "error"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v7, Ljava/lang/Throwable;

    new-instance v8, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v8}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v8, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 11
    .parameter "url"
    .parameter
    .parameter "data"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "raw post: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .local v1, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v8, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p3}, Lcom/mob/tools/network/HTTPPart;->getBufferedHttpEntity()Lorg/apache/http/entity/BufferedHttpEntity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v0, 0x0

    .local v0, client:Lorg/apache/http/client/HttpClient;
    const-string v6, "https://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    :goto_1
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz p4, :cond_1

    invoke-interface {p4, v2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lorg/apache/http/HttpResponse;)V

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;)V
    .locals 16
    .parameter "url"
    .parameter
    .parameter "data"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, time:J
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "raw post: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v7, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mob/tools/network/KVPair;

    .local v4, header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    iget-object v14, v4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v12, v4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v14, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v4           #header:Lcom/mob/tools/network/KVPair;,"Lcom/mob/tools/network/KVPair<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/mob/tools/network/HTTPPart;->getBufferedHttpEntity()Lorg/apache/http/entity/BufferedHttpEntity;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v1, 0x0

    .local v1, client:Lorg/apache/http/client/HttpClient;
    const-string v12, "https://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/mob/tools/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    :goto_1
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .local v8, status:I
    const/16 v12, 0xc8

    if-ne v8, v12, :cond_4

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "use time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p4, :cond_1

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #is:Ljava/io/InputStream;
    :cond_1
    :goto_2
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #status:I
    :cond_2
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .restart local v5       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #status:I
    :catch_0
    move-exception v9

    .local v9, t:Ljava/lang/Throwable;
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v12

    .end local v6           #is:Ljava/io/InputStream;
    :cond_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, error:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "error"

    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    new-instance v12, Ljava/lang/Throwable;

    new-instance v13, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v13}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v13, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v12

    .end local v2           #errMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #error:Ljava/lang/String;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v12

    goto :goto_2

    :catch_2
    move-exception v13

    goto :goto_3
.end method
