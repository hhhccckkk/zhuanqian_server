.class public Lnet/youmi/android/a/a/g/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    sput v0, Lnet/youmi/android/a/a/g/a/b;->b:I

    const/16 v0, 0x4e21

    sput v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/a/a/g/a/b;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/a/a/g/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;I)Lnet/youmi/android/a/a/g/c/b/d;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lnet/youmi/android/a/a/g/c/b/j;->a(Landroid/content/Context;Lnet/youmi/android/a/a/e/g/b;I)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x1499700

    add-long v5, v1, v4

    new-instance v0, Lnet/youmi/android/a/a/g/c/b/d;

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/a/a/g/c/b/d;-><init>(JLjava/lang/String;IJ)V

    iput-object p1, v0, Lnet/youmi/android/a/a/g/c/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;ILjava/lang/String;J)Lnet/youmi/android/a/a/g/c/b/d;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;I)Lnet/youmi/android/a/a/g/c/b/d;

    move-result-object v0

    iput-object p4, v0, Lnet/youmi/android/a/a/g/c/b/d;->f:Ljava/lang/String;

    iput-wide p5, v0, Lnet/youmi/android/a/a/g/c/b/d;->g:J

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/a/e;->b(Ljava/lang/String;)Lnet/youmi/android/a/a/g/a/g;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->g()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/b;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/f/c;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->C()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lnet/youmi/android/a/a/h/a;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/f/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/youmi/android/a/a/g/f/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/f/c;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lnet/youmi/android/a/a/g/f/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/c/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "a_wall"

    new-instance v0, Lnet/youmi/android/a/c/c/b;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/youmi/android/a/c/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/youmi/android/a/c/c/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/c/c/a;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lnet/youmi/android/b/k;

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/b/b;->b()Lnet/youmi/android/b/a;

    move-result-object v1

    const-string v2, "unexp"

    invoke-virtual {v1, v2}, Lnet/youmi/android/b/a;->a(Ljava/lang/String;)Lnet/youmi/android/b/a;

    move-result-object v1

    invoke-virtual {v6}, Lnet/youmi/android/a/a/g/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/b/a;->b(Ljava/lang/String;)Lnet/youmi/android/b/a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnet/youmi/android/b/a;->a(J)Lnet/youmi/android/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/b/k;->b(Lnet/youmi/android/b/b;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()I
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/e;->c()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    sget v0, Lnet/youmi/android/a/a/g/a/b;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lnet/youmi/android/a/a/g/a/b;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v3, v5, :cond_4

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/a/a/g/a/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-object v1, v2

    :goto_2
    if-nez v0, :cond_a

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/e;->d()Lnet/youmi/android/a/a/g/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/youmi/android/a/a/g/a/i;->c(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/a/a/e/g/b;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;J)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/e;->a()V

    sget v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    move-object v0, v1

    :goto_4
    if-ge v2, v6, :cond_7

    aget-object v3, v5, v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/a/a/g/a/g;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    :cond_7
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v1

    if-ne v1, v9, :cond_9

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->d()V

    :goto_6
    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/a/g/a/e;->c(Lnet/youmi/android/a/a/g/a/g;)Z

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->c()V

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->h()I

    move-result v2

    if-nez v2, :cond_e

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/e;->d()Lnet/youmi/android/a/a/g/a/g;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/youmi/android/a/a/g/a/i;->c(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/a/a/e/g/b;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;J)V

    :cond_b
    :goto_7
    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/e;->a()V

    invoke-virtual {v0, v9}, Lnet/youmi/android/a/a/g/a/g;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/youmi/android/a/a/g/a/g;->b(J)V

    iget-object v1, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/youmi/android/a/a/g/a/e;->b(Lnet/youmi/android/a/a/g/a/g;)Z

    sget v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v2

    if-ne v2, v9, :cond_d

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->d()V

    :goto_8
    iget-object v2, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/youmi/android/a/a/g/a/e;->c(Lnet/youmi/android/a/a/g/a/g;)Z

    goto :goto_7

    :cond_d
    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->c()V

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->h()I

    move-result v2

    if-ne v2, v9, :cond_13

    iget-object v2, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lnet/youmi/android/a/a/g/a/i;->c(Landroid/content/Context;Ljava/lang/String;)Lnet/youmi/android/a/a/e/g/b;

    move-result-object v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/youmi/android/a/a/g/a/e;->a(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v0

    if-ne v0, v9, :cond_f

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->d()V

    :goto_9
    sget v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->c()V

    goto :goto_9

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->f()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_11

    iget-object v3, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lnet/youmi/android/a/a/g/a/e;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/g/a/e;->c(Lnet/youmi/android/a/a/g/a/g;)Z

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->i()I

    move-result v3

    if-ne v3, v9, :cond_12

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;I)Lnet/youmi/android/a/a/g/c/b/d;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/a/a/g/c/b/f;->b(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V

    :cond_11
    :goto_a
    sget v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v3, v1}, Lnet/youmi/android/a/a/g/a/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    const/16 v3, 0xd

    invoke-virtual {v0}, Lnet/youmi/android/a/a/g/a/g;->f()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/a/a/g/a/b;->a(Ljava/lang/String;Lnet/youmi/android/a/a/e/g/b;ILjava/lang/String;J)Lnet/youmi/android/a/a/g/c/b/d;

    move-result-object v0

    invoke-static {v7, v0}, Lnet/youmi/android/a/a/g/c/b/f;->b(Landroid/content/Context;Lnet/youmi/android/a/a/g/c/b/d;)V

    goto :goto_a

    :cond_13
    sget v0, Lnet/youmi/android/a/a/g/a/b;->c:I

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    goto/16 :goto_5

    :cond_15
    move-object v0, v1

    goto/16 :goto_2

    :cond_16
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lnet/youmi/android/a/b/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/youmi/android/a/b/k/m;->a()Lnet/youmi/android/a/b/k/m;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/a/a/g/a/c;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/a/a/g/a/c;-><init>(Lnet/youmi/android/a/a/g/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/b/k/m;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    invoke-static {}, Lnet/youmi/android/a/a/h/a;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/a/a/g/a/b;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Lnet/youmi/android/a/a/g/a/b;->b:I

    invoke-direct {p0}, Lnet/youmi/android/a/a/g/a/b;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/a/a/g/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/a/g/a/h;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
