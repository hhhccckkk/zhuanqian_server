.class public Lcom/datouniao/AdPublisher/t;
.super Ljava/lang/Thread;


# static fields
.field protected static d:Z

.field protected static e:Z

.field protected static f:Ljava/util/HashMap;

.field protected static g:Ljava/util/HashMap;

.field protected static h:Landroid/os/Handler;

.field protected static i:Ljava/lang/Integer;

.field protected static q:Z

.field private static w:Z


# instance fields
.field public a:Ljava/lang/String;

.field protected b:I

.field c:Ljava/lang/String;

.field j:D

.field k:D

.field l:Ljava/text/NumberFormat;

.field m:Ljava/io/InputStream;

.field n:Ljava/io/FileOutputStream;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/datouniao/AdPublisher/c;

.field private t:Landroid/content/Context;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private x:Ljava/io/File;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/datouniao/AdPublisher/t;->d:Z

    sput-boolean v1, Lcom/datouniao/AdPublisher/t;->e:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/datouniao/AdPublisher/t;->w:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    sput-boolean v1, Lcom/datouniao/AdPublisher/t;->q:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->v:Ljava/lang/String;

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->j:D

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->k:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->l:Ljava/text/NumberFormat;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const-string v0, "/sdcard/download/"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->v:Ljava/lang/String;

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->j:D

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->k:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->l:Ljava/text/NumberFormat;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const-string v0, "/sdcard/download/"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/datouniao/AdPublisher/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->v:Ljava/lang/String;

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->j:D

    iput-wide v3, p0, Lcom/datouniao/AdPublisher/t;->k:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->l:Ljava/text/NumberFormat;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    const-string v0, ""

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const-string v0, "/sdcard/download/"

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-direct/range {p0 .. p5}, Lcom/datouniao/AdPublisher/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/t;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const/4 v1, 0x0

    const-string v0, ""

    invoke-static {p2}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    aget-object v1, v3, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p2, p0, Lcom/datouniao/AdPublisher/t;->r:Ljava/lang/String;

    :cond_2
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/datouniao/AdPublisher/t;->u:Ljava/lang/String;

    :cond_3
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p4, p0, Lcom/datouniao/AdPublisher/t;->v:Ljava/lang/String;

    const-string v0, ".apk"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    :cond_4
    :goto_0
    const-string v0, ""

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p5, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    :cond_5
    new-instance v0, Lcom/datouniao/AdPublisher/c;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    sget-object v0, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    :cond_6
    sget-object v0, Lcom/datouniao/AdPublisher/t;->f:Ljava/util/HashMap;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/datouniao/AdPublisher/t;->f:Ljava/util/HashMap;

    :cond_7
    sget-object v0, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    if-nez v0, :cond_8

    new-instance v0, Lcom/datouniao/AdPublisher/u;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/u;-><init>(Lcom/datouniao/AdPublisher/t;)V

    sput-object v0, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    :cond_8
    return-void

    :cond_9
    iput-object p4, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/datouniao/AdPublisher/t;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/datouniao/AdPublisher/t;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/datouniao/AdPublisher/t;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/datouniao/AdPublisher/p;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/p;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    invoke-virtual {v1, v0}, Lcom/datouniao/AdPublisher/c;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "getting_filename"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/datouniao/AdPublisher/t;->b:I

    const-string v3, "0%"

    invoke-virtual {v1, v0, v2, v3}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/datouniao/AdPublisher/x;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/x;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->r:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/x;->a(Ljava/lang/String;Ljava/util/List;[B)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/datouniao/AdPublisher/t;->j:D

    iget-wide v2, p0, Lcom/datouniao/AdPublisher/t;->j:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_8

    const-string v0, "\u672a\u77e5\u6587\u4ef6\u5927\u5c0f"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_7
    const-string v0, ""

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4
    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    iget v3, p0, Lcom/datouniao/AdPublisher/t;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "getting_filename"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " 0%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_6
    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_5
    throw v0

    :cond_8
    :try_start_9
    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    iget-wide v3, p0, Lcom/datouniao/AdPublisher/t;->k:D

    iget-wide v5, p0, Lcom/datouniao/AdPublisher/t;->j:D

    iget-object v7, p0, Lcom/datouniao/AdPublisher/t;->r:Ljava/lang/String;

    iget v8, p0, Lcom/datouniao/AdPublisher/t;->b:I

    iget-object v9, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    iget-object v10, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/datouniao/AdPublisher/t;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;DDLjava/lang/String;ILjava/io/InputStream;Lcom/datouniao/AdPublisher/c;Z)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_a

    const-string v0, "(404)\u4e0b\u8f7d\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_b

    const-string v0, "(500)\u670d\u52a1\u7aef\u51fa\u73b0\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "\u670d\u52a1\u5668\u65e0\u54cd\u5e94"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_c
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->y:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;DDLjava/lang/String;ILjava/io/InputStream;Lcom/datouniao/AdPublisher/c;Z)V
    .locals 33

    const-string v3, ""

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, ".apk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    const-string v5, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Down_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".txt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/Android/data/cache/downloadCache/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/datouniao/AdPublisher/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, ".apk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    const-string v4, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-wide/from16 v0, p5

    double-to-int v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/datouniao/AdPublisher/x;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/sdcard/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v5, :cond_8

    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p11, :cond_2

    move-object v0, v4

    check-cast v0, Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    :goto_3
    const-wide/16 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v13, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    if-eqz p9, :cond_7

    sget-object v6, Lcom/datouniao/AdPublisher/t;->f:Ljava/util/HashMap;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x19000

    new-array v0, v6, [B

    move-object/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v17, v3

    move v4, v5

    move-wide/from16 v5, p3

    :goto_4
    :try_start_1
    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    :goto_5
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    :cond_3
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    if-eqz v3, :cond_15

    :cond_4
    :goto_7
    :try_start_3
    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/datouniao/AdPublisher/t;->e:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/datouniao/AdPublisher/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, ""

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->p:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".tmp"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sput-boolean v4, Lcom/datouniao/AdPublisher/t;->d:Z

    new-instance v4, Lcom/datouniao/AdPublisher/x;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/datouniao/AdPublisher/x;-><init>(Landroid/content/Context;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/datouniao/AdPublisher/x;->c(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    array-length v3, v6

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    const-string v4, "AppSettings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "InstallToast"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/datouniao/AdPublisher/t;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :try_start_4
    const-string v3, ".apk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "END_DOWNLOAD_AND_CLICK_INSTALL"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v3, p10

    move-object/from16 v4, v22

    move/from16 v5, p8

    invoke-virtual/range {v3 .. v8}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_9
    :try_start_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v3, 0x0

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    :cond_6
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;)Lcom/datouniao/AdPublisher/AppConnect;

    :cond_7
    :goto_b
    return-void

    :cond_8
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :cond_b
    :try_start_7
    sget-object v3, Lcom/datouniao/AdPublisher/t;->f:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p10

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/c;->a(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_b

    :catch_1
    move-exception v3

    move-wide v4, v5

    :goto_c
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/datouniao/AdPublisher/t;->q:Z

    div-double v3, v4, p5

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v5, "download_failed"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "%"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    move-object/from16 v1, v23

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/c;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    :cond_c
    :try_start_9
    sget-object v3, Lcom/datouniao/AdPublisher/t;->f:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v3, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_d
    move/from16 v0, v19

    int-to-double v11, v0

    add-double/2addr v11, v5

    move/from16 v0, v19

    int-to-double v5, v0

    add-double v20, v17, v5

    sub-double v5, v11, v15

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v27, v17, v24

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-int v3, v0

    sub-long v27, v17, v13

    const-wide/16 v29, 0x3e8

    cmp-long v19, v27, v29

    if-gez v19, :cond_e

    cmpl-double v19, v11, p5

    if-nez v19, :cond_1e

    :cond_e
    sub-long v13, v17, v7

    const-wide/16 v15, 0x4e20

    cmp-long v13, v13, v15

    if-ltz v13, :cond_1d

    sget-boolean v13, Lcom/datouniao/AdPublisher/t;->q:Z

    if-nez v13, :cond_1d

    const-wide/16 v7, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_f

    const/4 v3, 0x1

    sput-boolean v3, Lcom/datouniao/AdPublisher/t;->q:Z

    goto/16 :goto_5

    :catch_2
    move-exception v3

    move-wide v4, v11

    goto/16 :goto_c

    :cond_f
    move-wide v13, v7

    move-wide v15, v11

    :goto_d
    const-wide/16 v17, 0x0

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    move/from16 v19, v3

    :goto_e
    div-double v7, v11, p5

    const-wide/high16 v9, 0x4059

    mul-double/2addr v7, v9

    double-to-int v0, v7

    move/from16 v27, v0

    const-wide/high16 v7, 0x4090

    div-double/2addr v5, v7

    double-to-int v10, v5

    if-ge v4, v10, :cond_1b

    move v9, v10

    :goto_f
    move/from16 v0, v19

    int-to-double v3, v0

    div-double v3, v20, v3

    sub-double v5, p5, v11

    div-double v3, v5, v3

    double-to-int v0, v3

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->l:Ljava/text/NumberFormat;

    move/from16 v0, v27

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_10

    const/4 v6, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "DOWNLOAD_FAILED"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v3, p10

    move-object/from16 v4, p2

    move/from16 v5, p8

    invoke-virtual/range {v3 .. v8}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_10
    :goto_10
    :try_start_c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "notify_title"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "notify_id"

    move/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "downSize"

    invoke-virtual {v3, v4, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "downPercent"

    move/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "downSpeed"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "downMaxSpeed"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "fileSize"

    move-wide/from16 v0, p5

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "usedTime"

    move/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "remainTime"

    move/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "pkgName"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/datouniao/AdPublisher/t;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/datouniao/AdPublisher/t;->a(Landroid/os/Bundle;)V

    move-wide v3, v13

    move-wide v7, v15

    move-wide/from16 v5, v17

    move-wide v13, v11

    :goto_11
    const-wide/16 v15, 0x0

    cmp-long v10, v5, v15

    if-nez v10, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :cond_11
    const-wide/16 v15, 0x0

    cmp-long v10, v3, v15

    if-nez v10, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_12
    const/4 v10, 0x1

    sput-boolean v10, Lcom/datouniao/AdPublisher/t;->e:Z

    move-wide/from16 v17, v20

    move-wide v15, v13

    move-wide v13, v5

    move-wide v5, v11

    move-wide/from16 v31, v3

    move v4, v9

    move-wide v9, v7

    move-wide/from16 v7, v31

    goto/16 :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_10

    :cond_13
    :try_start_d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v7, "PackageInstallerActivity"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    check-cast v4, Ljava/lang/String;

    const-string v3, "InstallAppProgress"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_14
    const/4 v3, 0x1

    move v5, v3

    goto/16 :goto_6

    :cond_15
    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v3

    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_8

    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "DOWNLOAD_COMPLETE"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v3, p10

    move-object/from16 v4, v22

    move/from16 v5, p8

    invoke-virtual/range {v3 .. v8}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v3

    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_9

    :catch_6
    move-exception v3

    :try_start_11
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v3, 0x0

    :try_start_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    goto/16 :goto_a

    :catchall_0
    move-exception v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    throw v3

    :cond_18
    new-instance v3, Lcom/datouniao/AdPublisher/aa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/datouniao/AdPublisher/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/datouniao/AdPublisher/aa;->b()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1a

    sget-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    sget-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    const-string v7, "\u89e3\u6790\u5305\u9519\u8bef\uff0c\u5c1d\u8bd5\u91cd\u65b0\u4e0b\u8f7d..."

    const/4 v8, 0x0

    move-object/from16 v3, p10

    move-object/from16 v4, v22

    move/from16 v5, p8

    invoke-virtual/range {v3 .. v8}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/datouniao/AdPublisher/t;->x:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_19
    move-object/from16 v0, p10

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/c;->a(I)V

    new-instance v3, Lcom/datouniao/AdPublisher/p;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/datouniao/AdPublisher/p;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1a
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/datouniao/AdPublisher/t;->i:Ljava/lang/Integer;

    move-object/from16 v0, p10

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/c;->a(I)V

    const-string v7, "\u89e3\u6790\u5305\u5931\u8d25\uff0c\u70b9\u51fb\u67e5\u770b"

    const/4 v8, 0x0

    move-object/from16 v3, p10

    move-object/from16 v4, v22

    move/from16 v5, p8

    invoke-virtual/range {v3 .. v8}, Lcom/datouniao/AdPublisher/c;->a(Ljava/lang/String;I[Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_a

    :cond_1b
    move v9, v4

    goto/16 :goto_f

    :cond_1c
    move/from16 v19, v3

    goto/16 :goto_e

    :cond_1d
    move-wide v13, v7

    move-wide v15, v9

    goto/16 :goto_d

    :cond_1e
    move-wide v5, v13

    move-wide v13, v15

    move/from16 v31, v4

    move-wide v3, v7

    move-wide v7, v9

    move/from16 v9, v31

    goto/16 :goto_11

    :cond_1f
    move-object/from16 v22, p2

    goto/16 :goto_1

    :cond_20
    move-object/from16 v23, p2

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/datouniao/AdPublisher/t;)Lcom/datouniao/AdPublisher/c;
    .locals 1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    const/16 v10, 0xce

    const-wide/16 v8, 0x0

    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v7, v0, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/datouniao/AdPublisher/t;->b:I

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/datouniao/AdPublisher/c;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/datouniao/AdPublisher/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v7}, Lcom/datouniao/AdPublisher/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/datouniao/AdPublisher/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v3, v2

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    cmpl-double v2, v3, v8

    if-eqz v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Range;bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    double-to-int v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v2, v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v1, Lcom/datouniao/AdPublisher/x;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/datouniao/AdPublisher/x;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v0, v2}, Lcom/datouniao/AdPublisher/x;->a(Ljava/lang/String;Ljava/util/List;[B)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    if-ne v0, v10, :cond_a

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eq v0, v10, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-double v5, v0

    :cond_4
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_8

    const-string v0, "\u672a\u77e5\u6587\u4ef6\u5927\u5c0f"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    iget v8, p0, Lcom/datouniao/AdPublisher/t;->b:I

    iget-object v9, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    iget-object v10, p0, Lcom/datouniao/AdPublisher/t;->s:Lcom/datouniao/AdPublisher/c;

    const/4 v11, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/datouniao/AdPublisher/t;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;DDLjava/lang/String;ILjava/io/InputStream;Lcom/datouniao/AdPublisher/c;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_a
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_b
    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->n:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_c
    :goto_4
    throw v0

    :cond_d
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_e

    const-string v0, "(404)\u4e0b\u8f7d\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_f

    const-string v0, "(500)\u670d\u52a1\u7aef\u51fa\u73b0\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const-string v0, "\u670d\u52a1\u5668\u65e0\u54cd\u5e94"

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_10
    move-wide v3, v8

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/datouniao/AdPublisher/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "installToast"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datouniao/AdPublisher/t;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/t;->y:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_1
    if-eqz v4, :cond_2

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move p4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-boolean v0, Lcom/datouniao/AdPublisher/t;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/datouniao/AdPublisher/t;->w:Z

    new-instance v0, Lcom/datouniao/AdPublisher/v;

    invoke-direct {v0, p0}, Lcom/datouniao/AdPublisher/v;-><init>(Lcom/datouniao/AdPublisher/t;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AppConnect;->getInstance(Landroid/content/Context;)Lcom/datouniao/AdPublisher/AppConnect;

    const-string v0, ""

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/t;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/datouniao/AdPublisher/p;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/p;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/t;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/p;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/datouniao/AdPublisher/t;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
