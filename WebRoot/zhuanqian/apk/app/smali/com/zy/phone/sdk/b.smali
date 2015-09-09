.class final Lcom/zy/phone/sdk/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/zy/phone/sdk/SDKActivity;


# direct methods
.method constructor <init>(Lcom/zy/phone/sdk/SDKActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v1, 0x0

    const-string v0, "zy_packageName"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0}, Lcom/zy/phone/sdk/SDKActivity;->f(Lcom/zy/phone/sdk/SDKActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    iget-object v2, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v2}, Lcom/zy/phone/sdk/SDKActivity;->g(Lcom/zy/phone/sdk/SDKActivity;)Lcom/zy/phone/sdk/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zy/phone/sdk/SDKActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-static {v0, v1}, Lcom/zy/phone/sdk/SDKActivity;->a(Lcom/zy/phone/sdk/SDKActivity;Z)V

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    const-class v5, Lcom/zy/phone/service/ZYService;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    iget-object v5, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    iget-object v6, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    new-instance v7, Lcom/zy/phone/sdk/f;

    iget-object v8, p0, Lcom/zy/phone/sdk/b;->a:Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {v7, v8, v1}, Lcom/zy/phone/sdk/f;-><init>(Lcom/zy/phone/sdk/SDKActivity;B)V

    invoke-static {v6, v7}, Lcom/zy/phone/sdk/SDKActivity;->a(Lcom/zy/phone/sdk/SDKActivity;Lcom/zy/phone/sdk/f;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v7, v6}, Lcom/zy/phone/sdk/SDKActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/zy/phone/sdk/SDKActivity;->a(Lcom/zy/phone/sdk/SDKActivity;Z)V

    :cond_1
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v5, v0

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_3

    :cond_2
    return-void

    :cond_3
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    const-string v6, "short_message"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    const-string v1, "short_message"

    const-string v6, "0"

    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
