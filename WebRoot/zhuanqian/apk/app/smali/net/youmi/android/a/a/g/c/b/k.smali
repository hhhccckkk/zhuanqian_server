.class public Lnet/youmi/android/a/a/g/c/b/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lnet/youmi/android/a/a/e/g/b;

.field private c:[I

.field private d:[J

.field private e:[Ljava/lang/String;

.field private f:[J

.field private g:Lnet/youmi/android/a/a/g/c/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/a/a/g/c/b/k;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I[J[Ljava/lang/String;[J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;[I[J[Ljava/lang/String;[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/c/b/k;->b:Lnet/youmi/android/a/a/e/g/b;

    iput-object p3, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    iput-object p4, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    iput-object p5, p0, Lnet/youmi/android/a/a/g/c/b/k;->e:[Ljava/lang/String;

    iput-object p6, p0, Lnet/youmi/android/a/a/g/c/b/k;->f:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/a/a/g/c/b/k;->g:Lnet/youmi/android/a/a/g/c/b/d;

    return-void
.end method

.method private a(Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/c/b/k;->b(Lnet/youmi/android/a/a/g/c/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/b;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/c/b/b;->a(Lnet/youmi/android/a/a/g/c/b/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/youmi/android/a/a/g/c/b/k;->c(Lnet/youmi/android/a/a/g/c/b/d;)V

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/c/b/a;->a(Lnet/youmi/android/a/a/g/c/b/d;)Z

    goto :goto_0
.end method

.method private b(Lnet/youmi/android/a/a/g/c/b/d;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v0, p1, Lnet/youmi/android/a/a/g/c/b/d;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p1, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    iget-object v6, p1, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lnet/youmi/android/a/a/g/c/b/d;)V
    .locals 2

    const/4 v0, 0x3

    iget v1, p1, Lnet/youmi/android/a/a/g/c/b/d;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    iget-object v1, p1, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/g/f/c;->c(I)V

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/a/g/f/a;->a(Lnet/youmi/android/a/a/g/f/c;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->g:Lnet/youmi/android/a/a/g/c/b/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->g:Lnet/youmi/android/a/a/g/c/b/d;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->g:Lnet/youmi/android/a/a/g/c/b/d;

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/c/b/k;->a(Lnet/youmi/android/a/a/g/c/b/d;)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/c/b/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/e;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    array-length v0, v0

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    array-length v1, v1

    if-eq v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    const-wide/32 v2, 0x1499700

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    move v14, v0

    :goto_2
    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    array-length v0, v0

    if-ge v14, v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->c:[I

    aget v4, v0, v14

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->d:[J

    aget-wide v5, v0, v14

    iget-object v0, p0, Lnet/youmi/android/a/a/g/c/b/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->b:Lnet/youmi/android/a/a/e/g/b;

    invoke-static {v0, v1, v4}, Lnet/youmi/android/a/a/g/c/b/j;->a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v0, v14, 0x1

    move v14, v0

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v5, v1

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/d;

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/a/a/g/c/b/d;-><init>(JLjava/lang/String;IJ)V

    const/4 v7, 0x0

    iget-object v3, p0, Lnet/youmi/android/a/a/g/c/b/k;->b:Lnet/youmi/android/a/a/e/g/b;

    invoke-virtual {v3, v4}, Lnet/youmi/android/a/a/e/g/b;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v7, Lnet/youmi/android/a/a/g/c/b/d;

    move-wide v8, v1

    move v11, v4

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lnet/youmi/android/a/a/g/c/b/d;-><init>(JLjava/lang/String;IJ)V

    :cond_8
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/c/b/d;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->e:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->e:[Ljava/lang/String;

    aget-object v1, v1, v14

    iput-object v1, v0, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_9
    :goto_4
    :try_start_2
    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->f:[J

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->f:[J

    aget-wide v1, v1, v14

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    iget-object v1, p0, Lnet/youmi/android/a/a/g/c/b/k;->f:[J

    aget-wide v1, v1, v14

    iput-wide v1, v0, Lnet/youmi/android/a/a/g/c/b/d;->g:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    :goto_5
    :try_start_3
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/c/b/k;->a(Lnet/youmi/android/a/a/g/c/b/d;)V

    if-eqz v7, :cond_6

    invoke-direct {p0, v7}, Lnet/youmi/android/a/a/g/c/b/k;->a(Lnet/youmi/android/a/a/g/c/b/d;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4
.end method
