.class public Lcom/alipay/share/sdk/openapi/channel/APMessageAct;
.super Ljava/lang/Object;
.source "APMessageAct.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Alipay.SDK.APMessageAct"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "content"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.alipay.mobile.socialwidget.ui.ShareDispenseActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "content"
    .parameter "var3"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.alipay.mobile.socialwidget.ui.ShareDispenseActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "content"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 19
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 22
    const-string v5, "alipays://platformapi/startapp?appId=20000167&actionType=outShare"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 21
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .local v2, intent:Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 24
    invoke-virtual {v2, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    const v5, 0x1337966

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v4, "actionType"

    const-string v5, "outShare"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    sget-object v4, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/alipay/share/sdk/openapi/channel/MMessageUtil;->checkSum(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 33
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    const-string v3, "Alipay.SDK.APMessageAct"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send alipay message, intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v3, 0x1

    .line 48
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 36
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "Alipay.SDK.APMessageAct"

    const-string v5, "send fail, target ActivityNotFound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 40
    .local v1, exception:Ljava/lang/Exception;
    const-string v4, "Alipay.SDK.APMessageAct"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send fail "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "Alipay.SDK.APMessageAct"

    const-string v5, "send fail, invalid arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendToZFB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "content"

    .prologue
    .line 65
    const-string v0, "com.eg.android.AlipayGphone"

    const-string v1, "com.alipay.mobile.socialwidget.ui.ShareDispenseActivity"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static sendToZFB(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "context"
    .parameter "content"
    .parameter "bundle"

    .prologue
    .line 61
    const-string v0, "com.eg.android.AlipayGphone"

    const-string v1, "com.alipay.mobile.socialwidget.ui.ShareDispenseActivity"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
