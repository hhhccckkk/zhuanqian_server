.class public final Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "APMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/share/sdk/openapi/channel/APMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Receiver"
.end annotation


# static fields
.field public static final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;-><init>(Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;)V
    .locals 0
    .parameter "callBack"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;

    .line 54
    return-void
.end method

.method public static registerCallBack(Ljava/lang/String;Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;)V
    .locals 1
    .parameter "key"
    .parameter "callBack1"

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static unregisterCallBack(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 76
    sget-object v0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    const-string v1, "Alipay.SDK.APMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;

    invoke-interface {v1, p2}, Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;->handleMessage(Landroid/content/Intent;)V

    .line 60
    const-string v1, "Alipay.SDK.APMessage"

    const-string v2, "mm message self-handled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v1, Lcom/alipay/share/sdk/openapi/channel/APMessage$Receiver;->callbacks:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;

    .local v0, messageCallBack:Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p2}, Lcom/alipay/share/sdk/openapi/channel/APMessage$CallBack;->handleMessage(Landroid/content/Intent;)V

    .line 65
    const-string v1, "Alipay.SDK.APMessage"

    const-string v2, "mm message handled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
