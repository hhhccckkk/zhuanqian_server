.class final Lcom/yql/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yql/sdk/a/c;


# instance fields
.field private synthetic a:Lcom/yql/sdk/e;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yql/sdk/e;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/yql/sdk/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yql/sdk/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yql/sdk/c;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yql/sdk/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yql/sdk/c;->c:Ljava/lang/String;

    #calls: Lcom/yql/sdk/DRSdk;->checkMD5(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/yql/sdk/DRSdk;->access$2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yql/sdk/c;->b:Ljava/lang/String;

    #calls: Lcom/yql/sdk/DRSdk;->deleteApk(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/yql/sdk/DRSdk;->access$3(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yql/sdk/c;->d:Landroid/content/Context;

    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$4()Z

    move-result v1

    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yql/sdk/DRSdk;->initialize(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/yql/sdk/DRSdk;->access$6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wall.apk"

    invoke-static {v0, v1}, Lcom/yql/sdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
