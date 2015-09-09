.class public Lnet/youmi/android/a/b/h/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static g:Ljava/util/Timer;

.field private static h:Ljava/util/Timer;

.field private static i:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->b:Z

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->c:Z

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->d:Z

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->e:Z

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/a/b/h/b/d;->f:I

    new-instance v0, Lnet/youmi/android/a/b/h/b/g;

    invoke-direct {v0}, Lnet/youmi/android/a/b/h/b/g;-><init>()V

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->i:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private static final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x1e

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    sput-object p0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/b/h/b/a;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/h;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/b/h/b/h;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/i;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/b/h/b/i;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_3

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_2

    :pswitch_5
    invoke-static {p0}, Lnet/youmi/android/a/b/h/b/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/b/h/b/a;->a()Z

    goto :goto_2

    :pswitch_6
    invoke-static {p0}, Lnet/youmi/android/a/b/h/b/h;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/b/h/b/h;->a()Z

    goto :goto_2

    :pswitch_7
    invoke-static {p0}, Lnet/youmi/android/a/b/h/b/i;->a(Landroid/content/Context;)Lnet/youmi/android/a/b/h/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/a/b/h/b/i;->a()Z

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lnet/youmi/android/a/b/h/b/d;->h:Ljava/util/Timer;

    return-object p0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->j(Landroid/content/Context;)V

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->i()V

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->g(Landroid/content/Context;)V

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->f(Landroid/content/Context;)V

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->h(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    sput-object p0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/a/b/h/b/d;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lnet/youmi/android/a/b/h/b/d;->b:Z

    return p0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lnet/youmi/android/a/b/h/b/d;->f:I

    return v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->j()V

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/a/b/h/b/d;->i(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    sput-object p0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method private static final b(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Lnet/youmi/android/a/b/h/b/d;->i:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lnet/youmi/android/a/b/h/b/d;->c:Z

    return p0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Lnet/youmi/android/a/b/h/b/d;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lnet/youmi/android/a/b/h/b/d;->f:I

    return v0
.end method

.method public static final c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lnet/youmi/android/a/b/h/b/d;->d:Z

    return p0
.end method

.method public static final d(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lnet/youmi/android/a/b/h/b/d;->e:Z

    return p0
.end method

.method public static final e(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/a/b/h/b/d;->c:Z

    return v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static final f(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->b(Landroid/content/Context;I)V

    return-void
.end method

.method static final g(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->b(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/a/b/h/b/d;->d:Z

    return v0
.end method

.method static final h(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lnet/youmi/android/a/b/h/b/d;->b(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/a/b/h/b/d;->e:Z

    return v0
.end method

.method private static final i()V
    .locals 6

    invoke-static {}, Lnet/youmi/android/a/b/h/b/d;->j()V

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    new-instance v1, Lnet/youmi/android/a/b/h/b/e;

    invoke-direct {v1}, Lnet/youmi/android/a/b/h/b/e;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final i(Landroid/content/Context;)V
    .locals 2

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    sget-object v1, Lnet/youmi/android/a/b/h/b/d;->i:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/youmi/android/a/b/h/b/d;->i:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private static final j()V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->g:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/a/b/h/b/d;->f:I

    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a/b/h/b/d;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final j(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lnet/youmi/android/a/b/h/b/d;->h:Ljava/util/Timer;

    sget-object v0, Lnet/youmi/android/a/b/h/b/d;->h:Ljava/util/Timer;

    new-instance v1, Lnet/youmi/android/a/b/h/b/f;

    invoke-direct {v1, p0}, Lnet/youmi/android/a/b/h/b/f;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
