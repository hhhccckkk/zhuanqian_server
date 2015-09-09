.class public final Lcom/jy/func/t/i;
.super Ljava/lang/Object;
.source "UIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jiongyou.app.action.TASKSUCCESSS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MSG_WHAT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.jiongyou.app.action.QIANDAOSUCCESSS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MSG_WHAT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2
    .parameter "paramContext"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jy/func/JYOfferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, localIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
