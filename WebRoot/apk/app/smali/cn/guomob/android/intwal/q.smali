.class public Lcn/guomob/android/intwal/q;
.super Ljava/lang/Object;


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field public a:J

.field public b:J

.field protected c:I

.field protected d:Ljava/lang/String;

.field e:I

.field private f:Ljava/net/URL;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;

.field private m:Lcn/guomob/android/intwal/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadWallGuomob"

    sput-object v0, Lcn/guomob/android/intwal/q;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->f:Ljava/net/URL;

    iput-wide v2, p0, Lcn/guomob/android/intwal/q;->a:J

    iput-wide v2, p0, Lcn/guomob/android/intwal/q;->b:J

    iput v1, p0, Lcn/guomob/android/intwal/q;->c:I

    iput v1, p0, Lcn/guomob/android/intwal/q;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    iget-object v3, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/guomob/android/intwal/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/q;->a(I)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->f:Ljava/net/URL;

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->f:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v7, 0x1388

    :try_start_1
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v9, v7

    iput-wide v9, p0, Lcn/guomob/android/intwal/q;->a:J

    iget-wide v9, p0, Lcn/guomob/android/intwal/q;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    cmp-long v7, v3, v9

    if-nez v7, :cond_1

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-wide v0, v5

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v7

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-wide v0, v5

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto :goto_0

    :cond_2
    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->f:Ljava/net/URL;

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->f:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/16 v1, 0x1388

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcn/guomob/android/intwal/q;->a:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-wide v0, v5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-wide v0, v5

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    throw v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v5

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v7, v1

    goto :goto_2

    :catch_a
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_1
.end method

.method static synthetic a(Lcn/guomob/android/intwal/q;)Lcn/guomob/android/intwal/q;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcn/guomob/android/intwal/q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcn/guomob/android/intwal/q;->c:I

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcn/guomob/android/intwal/q;->c:I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x3

    iput-object p1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    iput p5, p0, Lcn/guomob/android/intwal/q;->e:I

    iput-object p4, p0, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/q;->a(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/q;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/guomob/android/intwal/q;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->k:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    iput-object p3, p0, Lcn/guomob/android/intwal/q;->h:Ljava/lang/String;

    iput-object p2, p0, Lcn/guomob/android/intwal/q;->i:Landroid/os/Handler;

    iput-object p0, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/q;->b(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcn/guomob/android/intwal/q;->a(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/guomob/android/intwal/q;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    iget v0, p0, Lcn/guomob/android/intwal/q;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/guomob/android/intwal/q;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    iget-object v2, p0, Lcn/guomob/android/intwal/q;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcn/guomob/android/intwal/q;->h:Ljava/lang/String;

    iget-object v4, p0, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

    iget v5, p0, Lcn/guomob/android/intwal/q;->e:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/guomob/android/intwal/q;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/q;->a(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 9

    const-wide/16 v3, 0x0

    new-array v6, p1, [J

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->h:Ljava/lang/String;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/guomob/android/intwal/q;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/q;->a(I)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcn/guomob/android/intwal/e;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    iget-object v2, p0, Lcn/guomob/android/intwal/q;->h:Ljava/lang/String;

    iget-object v3, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    iget-object v5, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcn/guomob/android/intwal/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcn/guomob/android/intwal/q;[J)V

    :try_start_0
    invoke-virtual {v0}, Lcn/guomob/android/intwal/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcn/guomob/android/intwal/r;

    invoke-direct {v1, p0, v0}, Lcn/guomob/android/intwal/r;-><init>(Lcn/guomob/android/intwal/q;Lcn/guomob/android/intwal/e;)V

    invoke-virtual {v1}, Lcn/guomob/android/intwal/r;->start()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v1, v6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    iget-object v5, v5, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_3

    move-wide v1, v3

    :goto_3
    aput-wide v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-static {v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Guomob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/guomob/android/intwal/q;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/guomob/android/intwal/q;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-static {v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Guomob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/guomob/android/intwal/q;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-static {v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Guomob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/guomob/android/intwal/q;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcn/guomob/android/intwal/q;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcn/guomob/android/intwal/q;->e:I

    return v0
.end method

.method public g()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 8

    const/high16 v0, 0x42c8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v1, "guomob.down.action"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    iget-wide v4, v1, Lcn/guomob/android/intwal/q;->b:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-object v1, p0, Lcn/guomob/android/intwal/q;->m:Lcn/guomob/android/intwal/q;

    iget-wide v6, v1, Lcn/guomob/android/intwal/q;->a:J

    div-long/2addr v4, v6

    long-to-float v1, v4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_0

    :goto_0
    const-string v1, "name"

    iget-object v4, p0, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "progress"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/guomob/android/intwal/q;->l:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
