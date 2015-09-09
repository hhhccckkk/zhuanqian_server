.class public Lcn/guomob/android/intwal/OpenIntegralWall;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcn/guomob/android/intwal/OpenIntegralWall;


# instance fields
.field protected a:Landroid/app/Activity;

.field b:Landroid/content/Intent;

.field protected c:Z

.field private e:Landroid/app/Activity;

.field private f:Lcn/guomob/android/intwal/aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->b:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->c:Z

    return-void
.end method

.method static synthetic a(Lcn/guomob/android/intwal/OpenIntegralWall;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    if-nez v0, :cond_1

    new-instance v0, Lcn/guomob/android/intwal/OpenIntegralWall;

    invoke-direct {v0}, Lcn/guomob/android/intwal/OpenIntegralWall;-><init>()V

    sput-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    iput-object p0, v0, Lcn/guomob/android/intwal/OpenIntegralWall;->e:Landroid/app/Activity;

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    iput-object p0, v0, Lcn/guomob/android/intwal/OpenIntegralWall;->a:Landroid/app/Activity;

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->openwifi()V

    invoke-static {p0}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->f:Ljava/lang/String;

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    new-instance v1, Lcn/guomob/android/intwal/aa;

    sget-object v2, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    iget-object v2, v2, Lcn/guomob/android/intwal/OpenIntegralWall;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/guomob/android/intwal/aa;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcn/guomob/android/intwal/OpenIntegralWall;->f:Lcn/guomob/android/intwal/aa;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/guomob/android/intwal/GMScoreCallBack;

    sput-object v0, Lcn/guomob/android/intwal/Service01;->f:Lcn/guomob/android/intwal/GMScoreCallBack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GMscoreCall"

    invoke-static {p0, v1, v0}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "GMcallType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    iput-object p0, v0, Lcn/guomob/android/intwal/OpenIntegralWall;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public static getInstance()Lcn/guomob/android/intwal/OpenIntegralWall;
    .locals 1

    sget-object v0, Lcn/guomob/android/intwal/OpenIntegralWall;->d:Lcn/guomob/android/intwal/OpenIntegralWall;

    return-object v0
.end method

.method public static initBrocastType(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/guomob/android/intwal/OpenIntegralWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static initInterfaceType(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static initServiceType(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcn/guomob/android/intwal/OpenIntegralWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static setGbKeyCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sput-object p1, Lcn/guomob/android/intwal/GMUtils;->a:Ljava/lang/String;

    const-string v0, "GMkeyCode"

    invoke-static {p0, v0, p1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public openwifi()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/guomob/android/intwal/ag;

    invoke-direct {v1, p0}, Lcn/guomob/android/intwal/ag;-><init>(Lcn/guomob/android/intwal/OpenIntegralWall;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->c:Z

    return-void
.end method

.method public show()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcn/guomob/android/intwal/OpenIntegralWall;->show(Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcn/guomob/android/intwal/GMUtils;->i:Z

    sput-object p1, Lcn/guomob/android/intwal/GMUtils;->m:Ljava/lang/String;

    iget-object v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->e:Landroid/app/Activity;

    const-string v1, "GMother"

    invoke-static {v0, v1, p1}, Lcn/guomob/android/intwal/GMUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->c:Z

    iget-object v0, p0, Lcn/guomob/android/intwal/OpenIntegralWall;->f:Lcn/guomob/android/intwal/aa;

    invoke-virtual {v0, p1}, Lcn/guomob/android/intwal/aa;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
