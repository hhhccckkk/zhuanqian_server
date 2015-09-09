.class public Lcom/alipay/share/sdk/openapi/APTextObject;
.super Ljava/lang/Object;
.source "APTextObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "Alipay.SDK.ZFBTextObject"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_0
    const-string v0, "Alipay.SDK.ZFBTextObject"

    const-string v1, "checkArgs fail, text is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xb

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APTextObject;->text:Ljava/lang/String;

    .line 26
    return-void
.end method
