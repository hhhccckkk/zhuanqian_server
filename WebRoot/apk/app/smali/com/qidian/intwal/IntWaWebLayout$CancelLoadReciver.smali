.class public Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method public constructor <init>(Lcom/qidian/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout$CancelLoadReciver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    iget-object v1, v1, Lcom/qidian/intwal/IntWaWebLayout;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
