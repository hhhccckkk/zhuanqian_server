.class public final Lcom/jy/func/t/a;
.super Ljava/lang/Object;
.source "CYZDownloadManagerPro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/t/a$a;
    }
.end annotation


# static fields
.field private static COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"

.field private static COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field private static CONTENT_URI:Landroid/net/Uri; = null

.field private static bA:Ljava/lang/String; = "pauseDownload"

.field private static bB:Ljava/lang/String; = "resumeDownload"

.field private static bC:Z

.field private static bD:Z

.field private static bE:Ljava/lang/reflect/Method;

.field private static bF:Ljava/lang/reflect/Method;


# instance fields
.field private U:Landroid/app/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    sput-boolean v1, Lcom/jy/func/t/a;->bC:Z

    .line 51
    sput-boolean v1, Lcom/jy/func/t/a;->bD:Z

    .line 53
    sput-object v2, Lcom/jy/func/t/a;->bE:Ljava/lang/reflect/Method;

    .line 54
    sput-object v2, Lcom/jy/func/t/a;->bF:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/DownloadManager;)V
    .locals 0
    .parameter "downloadManager"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    .line 60
    return-void
.end method

.method private varargs a([J)I
    .locals 5
    .parameter "ids"

    .prologue
    const/4 v1, -0x1

    .line 124
    invoke-static {}, Lcom/jy/func/t/a;->bf()V

    .line 125
    sget-object v0, Lcom/jy/func/t/a;->bE:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 130
    :cond_0
    :try_start_0
    sget-object v0, Lcom/jy/func/t/a;->bE:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 138
    goto :goto_0
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "downloadId"
    .parameter "columnName"

    .prologue
    .line 357
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 358
    .local v1, query:Landroid/app/DownloadManager$Query;
    const/4 v2, 0x0

    .line 359
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 361
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    .line 367
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_1
    return-object v2

    .line 365
    :catchall_0
    move-exception v3

    .line 366
    if-eqz v0, :cond_2

    .line 367
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_2
    throw v3
.end method

.method private b(JLjava/lang/String;)I
    .locals 6
    .parameter "downloadId"
    .parameter "columnName"

    .prologue
    .line 381
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 382
    .local v1, query:Landroid/app/DownloadManager$Query;
    const/4 v2, -0x1

    .line 383
    .local v2, result:I
    const/4 v0, 0x0

    .line 385
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 390
    :cond_0
    if-eqz v0, :cond_1

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_1
    return v2

    .line 389
    :catchall_0
    move-exception v3

    .line 390
    if-eqz v0, :cond_2

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_2
    throw v3
.end method

.method private varargs b([J)I
    .locals 5
    .parameter "ids"

    .prologue
    const/4 v1, -0x1

    .line 148
    invoke-static {}, Lcom/jy/func/t/a;->bg()V

    .line 149
    sget-object v0, Lcom/jy/func/t/a;->bF:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 154
    :cond_0
    :try_start_0
    sget-object v0, Lcom/jy/func/t/a;->bF:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 162
    goto :goto_0
.end method

.method private static be()Z
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/jy/func/t/a;->bf()V

    .line 172
    invoke-static {}, Lcom/jy/func/t/a;->bg()V

    .line 173
    sget-object v0, Lcom/jy/func/t/a;->bE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jy/func/t/a;->bF:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bf()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 177
    sget-boolean v0, Lcom/jy/func/t/a;->bC:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    sput-boolean v1, Lcom/jy/func/t/a;->bC:Z

    .line 183
    :try_start_0
    const-class v0, Landroid/app/DownloadManager;

    const-string v1, "pauseDownload"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [J

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/a;->bE:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static bg()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 191
    sget-boolean v0, Lcom/jy/func/t/a;->bD:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_0
    sput-boolean v1, Lcom/jy/func/t/a;->bD:Z

    .line 197
    :try_start_0
    const-class v0, Landroid/app/DownloadManager;

    const-string v1, "resumeDownload"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [J

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/jy/func/t/a;->bF:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(J)[I
    .locals 5
    .parameter "downloadId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/jy/func/t/a;->d(J)[I

    move-result-object v0

    .line 84
    .local v0, bytesAndStatus:[I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, v0, v3

    aput v2, v1, v3

    aget v2, v0, v4

    aput v2, v1, v4

    return-object v1
.end method

.method private d(J)[I
    .locals 7
    .parameter "downloadId"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    const/4 v3, 0x3

    new-array v0, v3, [I

    aput v6, v0, v5

    aput v6, v0, v4

    .line 100
    .local v0, bytesAndStatus:[I
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v4, v4, [J

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 101
    .local v2, query:Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 103
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/jy/func/t/a;->U:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v3, 0x0

    const-string v4, "bytes_so_far"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 106
    const/4 v3, 0x1

    const-string v4, "total_size"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 107
    const/4 v3, 0x2

    const-string v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    return-object v0

    .line 109
    :catchall_0
    move-exception v3

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_2
    throw v3
.end method

.method private e(J)Ljava/lang/String;
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const-string v0, "local_uri"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "local_filename"

    goto :goto_0
.end method

.method private f(J)Ljava/lang/String;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 221
    const-string v0, "uri"

    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(J)I
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 236
    const-string v0, "reason"

    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->b(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private h(J)I
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 253
    const-string v0, "reason"

    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->b(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private i(J)I
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 263
    const-string v0, "reason"

    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->b(JLjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(J)I
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 69
    const-string v0, "status"

    invoke-direct {p0, p1, p2, v0}, Lcom/jy/func/t/a;->b(JLjava/lang/String;)I

    move-result v0

    return v0
.end method
