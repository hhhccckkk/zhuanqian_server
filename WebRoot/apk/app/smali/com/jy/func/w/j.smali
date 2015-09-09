.class public final Lcom/jy/func/w/j;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "CYZMySSLSocketFactory.java"


# instance fields
.field private fy:Ljavax/net/ssl/SSLContext;


# direct methods
.method private constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .parameter "truststore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 37
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/jy/func/w/j;->fy:Ljavax/net/ssl/SSLContext;

    .line 44
    new-instance v0, Lcom/jy/func/w/j$1;

    invoke-direct {v0, p0}, Lcom/jy/func/w/j$1;-><init>(Lcom/jy/func/w/j;)V

    .line 55
    .local v0, tm:Ljavax/net/ssl/X509TrustManager;
    iget-object v1, p0, Lcom/jy/func/w/j;->fy:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 56
    return-void
.end method

.method private static a(Ljava/security/KeyStore;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8
    .parameter "keyStore"

    .prologue
    .line 136
    :try_start_0
    new-instance v3, Lcom/jy/func/w/j;

    invoke-direct {v3, p0}, Lcom/jy/func/w/j;-><init>(Ljava/security/KeyStore;)V

    .line 137
    .local v3, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 138
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 139
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 141
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 142
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 143
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 147
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 8
    .parameter "cert"

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, caInput:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 78
    .local v0, ca:Ljava/security/cert/Certificate;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 79
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #caInput:Ljava/io/InputStream;
    .local v2, caInput:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .line 85
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 94
    .end local v2           #caInput:Ljava/io/InputStream;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, keyStoreType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 97
    .local v4, keyStore:Ljava/security/KeyStore;
    :try_start_3
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 98
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 99
    const-string v6, "ca"

    invoke-virtual {v4, v6, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 103
    :goto_1
    return-object v4

    .line 81
    .end local v4           #keyStore:Ljava/security/KeyStore;
    .end local v5           #keyStoreType:Ljava/lang/String;
    .restart local v1       #caInput:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 82
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v6

    .line 85
    :goto_3
    if-eqz v1, :cond_1

    .line 86
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 92
    :cond_1
    :goto_4
    throw v6

    .line 88
    :catch_2
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 88
    .end local v1           #caInput:Ljava/io/InputStream;
    .restart local v2       #caInput:Ljava/io/InputStream;
    .restart local v3       #cf:Ljava/security/cert/CertificateFactory;
    :catch_3
    move-exception v6

    .line 89
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v2           #caInput:Ljava/io/InputStream;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    .restart local v4       #keyStore:Ljava/security/KeyStore;
    .restart local v5       #keyStoreType:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 101
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v4           #keyStore:Ljava/security/KeyStore;
    .end local v5           #keyStoreType:Ljava/lang/String;
    .restart local v2       #caInput:Ljava/io/InputStream;
    .restart local v3       #cf:Ljava/security/cert/CertificateFactory;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #caInput:Ljava/io/InputStream;
    .restart local v1       #caInput:Ljava/io/InputStream;
    goto :goto_3

    .line 81
    .end local v1           #caInput:Ljava/io/InputStream;
    .restart local v2       #caInput:Ljava/io/InputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2           #caInput:Ljava/io/InputStream;
    .restart local v1       #caInput:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private dt()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jy/func/w/j;->fy:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 71
    return-void
.end method

.method private static du()Ljava/security/KeyStore;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, trustStore:Ljava/security/KeyStore;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static dv()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Lcom/jy/func/w/j;

    invoke-static {}, Lcom/jy/func/w/j;->du()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jy/func/w/j;-><init>(Ljava/security/KeyStore;)V

    .line 124
    .local v0, socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jy/func/w/j;->fy:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jy/func/w/j;->fy:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
