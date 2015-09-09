.class public Lnet/youmi/android/a/a/g/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/a/a/g/d/c;

.field private static b:J


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/d/c;
    .locals 2

    const-class v1, Lnet/youmi/android/a/a/g/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/a/g/d/c;->a:Lnet/youmi/android/a/a/g/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/a/a/g/d/c;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/d/c;->a:Lnet/youmi/android/a/a/g/d/c;

    :cond_0
    sget-object v0, Lnet/youmi/android/a/a/g/d/c;->a:Lnet/youmi/android/a/a/g/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "rsd"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/youmi/android/a/a/g/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lnet/youmi/android/a/c/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/a/b/d/a;->b([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lnet/youmi/android/a/b/d/k;->b([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/l;->b([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "J372ksjxls"

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    const-string v2, "J372ksjxls"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v0, v3, v4}, Lnet/youmi/android/a/b/c/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private c()Lnet/youmi/android/a/b/i/a/b;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lnet/youmi/android/a/b/i/a/b;

    invoke-direct {v0}, Lnet/youmi/android/a/b/i/a/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "none"

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/i/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/a/c/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/i/a/b;->a(I)V

    const-string v1, "a_sdk_init"

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/i/a/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 4

    sget-wide v0, Lnet/youmi/android/a/a/g/d/c;->b:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method b()V
    .locals 4

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lnet/youmi/android/a/a/g/d/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/a/a/g/d/c;->b:J

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "sys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lnet/youmi/android/a/a/g/d/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/a/b/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    invoke-static {}, Lnet/youmi/android/a/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/youmi/android/a/c/b;->a()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lnet/youmi/android/a/a/g/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/d/c;->c()Lnet/youmi/android/a/b/i/a/b;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "%s url or nec is null."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "init failed !"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/youmi/android/a/a/g/d/c;->c:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "%s response json is null."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "init failed !"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/youmi/android/a/c/b/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v1, "c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, -0x4b6

    if-eq v1, v2, :cond_4

    const/16 v2, -0x3ea

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/c;->a(I)V

    :cond_5
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/d/c;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
