.class public Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
.super Lcom/alipay/share/sdk/openapi/BaseReq;
.source "SendMessageToZFB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/share/sdk/openapi/SendMessageToZFB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Alipay.SDK.SendMessageToZFB.Req"

.field public static final ZFBSceneSession:I


# instance fields
.field public message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

.field private scene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseReq;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseReq;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Alipay.SDK.SendMessageToZFB.Req"

    const-string v1, "checkArgs fail ,message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-virtual {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p1}, Lcom/alipay/share/sdk/openapi/APMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/alipay/share/sdk/openapi/APMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    .line 55
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    .line 56
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->message:Lcom/alipay/share/sdk/openapi/APMediaMessage;

    invoke-static {v0}, Lcom/alipay/share/sdk/openapi/APMediaMessage$Builder;->toBundle(Lcom/alipay/share/sdk/openapi/APMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 61
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;->scene:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    return-void
.end method
