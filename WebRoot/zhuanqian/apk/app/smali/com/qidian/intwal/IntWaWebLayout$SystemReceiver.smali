.class public Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/IntWaWebLayout;


# direct methods
.method public constructor <init>(Lcom/qidian/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qidian/intwal/Utils;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qidian/intwal/IntWaWebLayout$SystemReceiver;->a:Lcom/qidian/intwal/IntWaWebLayout;

    invoke-virtual {v1, v0}, Lcom/qidian/intwal/IntWaWebLayout;->openInstanlled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
