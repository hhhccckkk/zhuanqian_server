.class public Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/IntWaWebLayout;


# direct methods
.method protected constructor <init>(Lcn/guomob/android/intwal/IntWaWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    :cond_0
    iget-object v2, p0, Lcn/guomob/android/intwal/IntWaWebLayout$PrecentReciver;->a:Lcn/guomob/android/intwal/IntWaWebLayout;

    iget-object v2, v2, Lcn/guomob/android/intwal/IntWaWebLayout;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
