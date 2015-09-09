.class public Lcom/qidian/intwal/QDOpenWall;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/qidian/intwal/QDOpenWall;


# instance fields
.field a:Landroid/content/ServiceConnection;

.field b:Landroid/content/Intent;

.field protected c:Z

.field private e:Landroid/app/Activity;

.field private f:Lcom/qidian/intwal/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/QDOpenWall;->a:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/qidian/intwal/QDOpenWall;->b:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qidian/intwal/QDOpenWall;->c:Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    if-nez v0, :cond_1

    new-instance v0, Lcom/qidian/intwal/QDOpenWall;

    invoke-direct {v0}, Lcom/qidian/intwal/QDOpenWall;-><init>()V

    sput-object v0, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    sget-object v0, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    iput-object p0, v0, Lcom/qidian/intwal/QDOpenWall;->e:Landroid/app/Activity;

    invoke-static {p0}, Lcom/qidian/intwal/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qidian/intwal/Utils;->h:Ljava/lang/String;

    sget-object v0, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    new-instance v1, Lcom/qidian/intwal/n;

    sget-object v2, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    iget-object v2, v2, Lcom/qidian/intwal/QDOpenWall;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/qidian/intwal/n;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/qidian/intwal/QDOpenWall;->f:Lcom/qidian/intwal/n;

    sput p2, Lcom/qidian/intwal/Utils;->n:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/qidian/intwal/QDScoreCallBack;

    sput-object v0, Lcom/qidian/intwal/Service01;->g:Lcom/qidian/intwal/QDScoreCallBack;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sideCallBackName"

    invoke-static {p0, v1, v0}, Lcom/qidian/intwal/Utils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "callBackType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/qidian/intwal/Utils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/qidian/intwal/QDOpenWall;
    .locals 1

    sget-object v0, Lcom/qidian/intwal/QDOpenWall;->d:Lcom/qidian/intwal/QDOpenWall;

    return-object v0
.end method

.method public static initBrocastType(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/qidian/intwal/QDOpenWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static initInterfaceType(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/qidian/intwal/QDOpenWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static initServiceType(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/qidian/intwal/QDOpenWall;->a(Landroid/app/Activity;Ljava/lang/Object;I)V

    return-void
.end method

.method public static setAppId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sput-object p1, Lcom/qidian/intwal/Utils;->a:Ljava/lang/String;

    const-string v0, "QDappId"

    invoke-static {p0, v0, p1}, Lcom/qidian/intwal/Utils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qidian/intwal/QDOpenWall;->c:Z

    return-void
.end method

.method public show()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/qidian/intwal/QDOpenWall;->show(Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/qidian/intwal/QDOpenWall;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qidian/intwal/QDOpenWall;->c:Z

    iget-object v0, p0, Lcom/qidian/intwal/QDOpenWall;->f:Lcom/qidian/intwal/n;

    invoke-virtual {v0, p1}, Lcom/qidian/intwal/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/QDOpenWall;->b:Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/QDOpenWall;->e:Landroid/app/Activity;

    const-class v2, Lcom/qidian/intwal/Service01;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/qidian/intwal/QDOpenWall;->b:Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qidian/intwal/QDOpenWall;->e:Landroid/app/Activity;

    const-class v2, Lcom/qidian/intwal/Service01;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open service01"

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qidian/intwal/QDOpenWall;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
