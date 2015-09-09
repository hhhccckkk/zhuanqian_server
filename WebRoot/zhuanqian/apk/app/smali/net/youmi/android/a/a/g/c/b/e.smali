.class Lnet/youmi/android/a/a/g/c/b/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Lnet/youmi/android/a/a/g/c/b/e;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->a:I

    iput-boolean v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/e;
    .locals 1

    sget-object v0, Lnet/youmi/android/a/a/g/c/b/e;->d:Lnet/youmi/android/a/a/g/c/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/e;

    invoke-direct {v0, p0}, Lnet/youmi/android/a/a/g/c/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/a/a/g/c/b/e;->d:Lnet/youmi/android/a/a/g/c/b/e;

    :cond_0
    sget-object v0, Lnet/youmi/android/a/a/g/c/b/e;->d:Lnet/youmi/android/a/a/g/c/b/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/e;->b(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/e;->c(Ljava/lang/String;I)V

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/e;->d(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/e;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/c;->c(I)V

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/a/g/f/a;->a(Lnet/youmi/android/a/a/g/f/c;)Z

    :cond_0
    return-void
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

    const-string v1, "a_sdk_eff"

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

.method private c(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/youmi/android/a/a/g/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lnet/youmi/android/a/a/g/c/b/a/a;->a()Lnet/youmi/android/a/a/g/c/b/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lnet/youmi/android/a/a/g/c/b/a/a;->a(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/a/a/g/c/b/e;->e(Ljava/lang/String;I)V

    return-void
.end method

.method private e(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p2, :sswitch_data_0

    :goto_1
    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/a/g/f/a;->a(Lnet/youmi/android/a/a/g/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/youmi/android/a/a/g/c/b/a/a;->a()Lnet/youmi/android/a/a/g/c/b/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lnet/youmi/android/a/a/g/c/b/a/a;->a(Ljava/lang/String;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/c;->a(I)V

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method a()V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/b;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/a/a/g/c/b/d;

    iget-object v4, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v4}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Lnet/youmi/android/a/a/g/c/b/d;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    iput-boolean v9, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    goto :goto_0

    :cond_2
    :goto_3
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/a;->b()Lnet/youmi/android/a/a/g/c/b/d;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v0, v4, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    cmp-long v5, v5, v2

    if-lez v5, :cond_3

    iget-object v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;

    invoke-static {v5}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/b;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/b;

    move-result-object v0

    iget-object v1, v4, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/c/b/b;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/c/b/d;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v5, v0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    cmp-long v1, v5, v2

    if-lez v1, :cond_7

    iget-wide v5, v0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iget-wide v7, v4, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_6

    iget-wide v0, v0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    add-long/2addr v0, v5

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_5

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->a:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v0, v5

    :cond_3
    :goto_4
    cmp-long v5, v0, v2

    if-lez v5, :cond_4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_5
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    iget-object v1, v4, Lnet/youmi/android/a/a/g/c/b/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/c/b/e;->c()Lnet/youmi/android/a/b/i/a/b;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lnet/youmi/android/a/c/d/c;->a(Landroid/content/Context;Ljava/lang/String;Lnet/youmi/android/a/b/i/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->a:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    const-wide/16 v0, 0x1388

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_5
    move-wide v0, v2

    goto :goto_4

    :cond_6
    :try_start_5
    iget-wide v0, v0, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->a:J

    sub-long/2addr v0, v5

    iget-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    add-long/2addr v0, v5

    goto :goto_4

    :cond_7
    move-wide v0, v2

    goto :goto_4

    :cond_8
    iget-wide v0, v4, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->a:I

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/c/b/a;->a()Lnet/youmi/android/a/a/g/c/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lnet/youmi/android/a/a/g/c/b/d;->e:J

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/c/b/b;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/youmi/android/a/a/g/c/b/b;->b(Lnet/youmi/android/a/a/g/c/b/d;)Z

    invoke-static {v0}, Lnet/youmi/android/a/b/b/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "c"

    const/4 v5, -0x1

    invoke-static {v0, v1, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    iget v1, v4, Lnet/youmi/android/a/a/g/c/b/d;->c:I

    invoke-direct {p0, v0, v1}, Lnet/youmi/android/a/a/g/c/b/e;->a(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto :goto_5
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/a/a/g/c/b/e;->c:Z

    return v0
.end method
