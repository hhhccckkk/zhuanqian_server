.class public Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method public constructor <init>(Lcom/qidian/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qidian.down.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "___progress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    :cond_1
    iget-object v2, p0, Lcom/qidian/intwal/IntWaWebLayout$PrecentReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
