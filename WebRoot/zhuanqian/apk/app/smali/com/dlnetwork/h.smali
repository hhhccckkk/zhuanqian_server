.class Lcom/dlnetwork/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/dlnetwork/DevNativeService;

.field private final synthetic b:Lcom/dlnetwork/au;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeService;Lcom/dlnetwork/au;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    iput-object p2, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/dlnetwork/DevNativeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    invoke-virtual {v2}, Lcom/dlnetwork/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    iget v0, v0, Lcom/dlnetwork/au;->c:I

    iget-object v1, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    invoke-virtual {v1}, Lcom/dlnetwork/au;->l()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dlnetwork/h;->cancel()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0}, Lcom/dlnetwork/DevNativeService;->d(Lcom/dlnetwork/DevNativeService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlnetwork/au;

    invoke-virtual {v0}, Lcom/dlnetwork/au;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    invoke-virtual {v2}, Lcom/dlnetwork/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0}, Lcom/dlnetwork/DevNativeService;->d(Lcom/dlnetwork/DevNativeService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlnetwork/au;

    sget-object v1, Lcom/dlnetwork/bb;->J:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/dlnetwork/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    invoke-virtual {v0}, Lcom/dlnetwork/DevNativeService;->a()V

    :goto_1
    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dlnetwork/h;->b:Lcom/dlnetwork/au;

    invoke-virtual {v2}, Lcom/dlnetwork/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u8fd8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5dee\u4e00\u70b9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u70b9\u5c31\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5230\u5956"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u52b1\u5566"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u597d\u53ef\u60dc\uff0c\u56de\u53bb\u591a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7528\u4e00\u4f1a\u5427~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dlnetwork/DevNativeService;->b(Lcom/dlnetwork/DevNativeService;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dlnetwork/h;->cancel()Z

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_3
    iget-object v0, p0, Lcom/dlnetwork/h;->a:Lcom/dlnetwork/DevNativeService;

    invoke-static {v0}, Lcom/dlnetwork/DevNativeService;->d(Lcom/dlnetwork/DevNativeService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    goto/16 :goto_1
.end method
