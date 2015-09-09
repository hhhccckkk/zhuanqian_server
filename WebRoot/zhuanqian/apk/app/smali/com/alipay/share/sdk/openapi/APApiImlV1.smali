.class public Lcom/alipay/share/sdk/openapi/APApiImlV1;
.super Ljava/lang/Object;
.source "APApiImlV1.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/IAPApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "Alipay.SDK.ZFBApiImlV1"


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private needSignatureCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appId"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "appId"
    .parameter "needSignatureCheck"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->needSignatureCheck:Z

    .line 36
    return-void
.end method

.method private checkSumConsistent(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 185
    iget-boolean v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->needSignatureCheck:Z

    if-nez v2, :cond_0

    .line 186
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "ignore alipay app signature validation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x1

    .line 196
    :goto_0
    return v2

    .line 191
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v2}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent([Landroid/content/pm/Signature;)Z

    move-result v2

    goto :goto_0

    .line 192
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 193
    .local v0, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkSumConsistent([B[B)Z
    .locals 4
    .parameter "bytes"
    .parameter "bytes1"

    .prologue
    const/4 v1, 0x0

    .line 220
    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    array-length v2, p1

    if-eqz v2, :cond_3

    .line 221
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 222
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "checkSumConsistent fail, length is different"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    const/4 v0, 0x0

    .local v0, var2:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 230
    const/4 v1, 0x1

    goto :goto_0

    .line 226
    :cond_2
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0           #var2:I
    :cond_3
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "checkSumConsistent fail, invalid arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSumConsistent([Landroid/content/pm/Signature;)Z
    .locals 9
    .parameter "signatures"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    iget-boolean v4, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->needSignatureCheck:Z

    if-nez v4, :cond_0

    .line 202
    const-string v3, "Alipay.SDK.ZFBApiImlV1"

    const-string v4, "ignore alipay app signature validation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return v2

    .line 205
    :cond_0
    array-length v5, p1

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_1

    move v2, v3

    .line 215
    goto :goto_0

    .line 205
    :cond_1
    aget-object v1, p1, v4

    .line 206
    .local v1, signature1:Landroid/content/pm/Signature;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, signature:Ljava/lang/String;
    const-string v6, "Alipay.SDK.ZFBApiImlV1"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "check signature:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v6, "30820244308201ad02044b28a3c9300d06092a864886f70d01010405003068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e7368693020170d3039313231363039303932395a180f32303531303131303039303932395a3068310b300906035504061302636e3110300e060355040813076265696a696e673110300e060355040713076265696a696e67310f300d060355040a1306616c69706179310f300d060355040b1306616c69706179311330110603550403130a73686971756e2e73686930819f300d06092a864886f70d010101050003818d0030818902818100b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d6490203010001300d06092a864886f70d010104050003818100b6b5e3854b2d5daaa02d127195d13a1927991176047982feaa3d1625740788296443e9000fe14dfe6701d7e86be06b9282e68d4eff32b19d48555b8a0838a6e146238f048aca986715d7eab0fb445796bbd19360a7721b8d99ba04581af957a290c47302055f813862f3c40b840e95898e72a1de03b6257a1acad4b482cd815c"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    const-string v3, "Alipay.SDK.ZFBApiImlV1"

    const-string v4, "checkSumConsistent pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getZFBSupportAPI()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->isZFBAppInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "Alipay.SDK.ZFBApiImlV1"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/alipay/share/sdk/plugin/APVersionCheck;

    iget-object v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/share/sdk/plugin/APVersionCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/share/sdk/plugin/APVersionCheck;->getZFBSupportVersion(I)I

    move-result v0

    goto :goto_0
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;)Z
    .locals 13
    .parameter "intent"
    .parameter "apiEventHandler"

    .prologue
    .line 83
    sget-object v10, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, messageContent:Ljava/lang/String;
    sget-object v10, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, messageSdkVersion:I
    sget-object v10, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, packageName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 87
    sget-object v10, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    .local v0, checkSums:[B
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v9, stringBuffer:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v10, "alipay"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/16 v12, 0x9

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMessageDigest([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 97
    .local v4, reCheckSum:[B
    invoke-static {v0, v4}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent([B[B)Z

    move-result v10

    if-nez v10, :cond_1

    .line 98
    const-string v10, "Alipay.SDK.ZFBApiImlV1"

    const-string v11, "checksum fail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v10, 0x0

    .line 124
    .end local v0           #checkSums:[B
    .end local v4           #reCheckSum:[B
    .end local v9           #stringBuffer:Ljava/lang/StringBuffer;
    :goto_0
    return v10

    .line 101
    .restart local v0       #checkSums:[B
    .restart local v4       #reCheckSum:[B
    .restart local v9       #stringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    sget-object v10, Lcom/alipay/share/sdk/Constant;->EXTRA_COMMAND_TYPE:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 119
    const/4 v10, 0x0

    goto :goto_0

    .line 103
    :pswitch_0
    new-instance v7, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;-><init>(Landroid/os/Bundle;)V

    .line 104
    .local v7, resp:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;
    invoke-interface {p2, v7}, Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;->onResp(Lcom/alipay/share/sdk/openapi/BaseResp;)V

    .line 105
    const/4 v10, 0x1

    goto :goto_0

    .line 107
    .end local v7           #resp:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;
    :pswitch_1
    new-instance v8, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;-><init>(Landroid/os/Bundle;)V

    .line 108
    .local v8, resp1:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;
    invoke-interface {p2, v8}, Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;->onResp(Lcom/alipay/share/sdk/openapi/BaseResp;)V

    .line 109
    const/4 v10, 0x1

    goto :goto_0

    .line 111
    .end local v8           #resp1:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;
    :pswitch_2
    new-instance v5, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>(Landroid/os/Bundle;)V

    .line 112
    .local v5, req:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
    invoke-interface {p2, v5}, Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;->onReq(Lcom/alipay/share/sdk/openapi/BaseReq;)V

    .line 113
    const/4 v10, 0x1

    goto :goto_0

    .line 115
    .end local v5           #req:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
    :pswitch_3
    new-instance v6, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;-><init>(Landroid/os/Bundle;)V

    .line 116
    .local v6, req1:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
    invoke-interface {p2, v6}, Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;->onReq(Lcom/alipay/share/sdk/openapi/BaseReq;)V

    .line 117
    const/4 v10, 0x1

    goto :goto_0

    .line 123
    .end local v0           #checkSums:[B
    .end local v4           #reCheckSum:[B
    .end local v6           #req1:Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Req;
    .end local v9           #stringBuffer:Ljava/lang/StringBuffer;
    :cond_2
    const-string v10, "Alipay.SDK.ZFBApiImlV1"

    const-string v11, "invalid argument"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v10, 0x0

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isZFBAppInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.eg.android.AlipayGphone"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 74
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v3}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent([Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const/4 v2, 0x1

    .line 76
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isZFBSupportAPI()Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->getZFBSupportAPI()I

    move-result v0

    const v1, 0x1337966

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openZFBApp()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->isZFBAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "open Alipay app failed, not installed or signature check failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start Alipay Main Activity fail, exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerApp(Ljava/lang/String;)Z
    .locals 5
    .parameter "appId"

    .prologue
    .line 40
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-direct {p0, v0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "Alipay.SDK.ZFBApiImlV1"

    const-string v1, "register app failed for alipay app signature check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    .line 48
    :cond_1
    const-string v0, "Alipay.SDK.ZFBApiImlV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    const-string v1, "com.eg.android.AlipayGphone"

    sget-object v2, Lcom/alipay/share/sdk/Constant;->PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String;

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alipay/share/sdk/Constant;->ACTION_APP_REGISTER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/share/sdk/openapi/channel/APMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendReq(Lcom/alipay/share/sdk/openapi/BaseReq;)Z
    .locals 4
    .parameter "req"

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v2, "com.eg.android.AlipayGphone"

    invoke-direct {p0, v2}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "sendReq failed for alipay app signature check failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/share/sdk/openapi/BaseReq;->checkArgs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    const-string v2, "Alipay.SDK.ZFBApiImlV1"

    const-string v3, "sendReq checkArgs fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/alipay/share/sdk/openapi/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 180
    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/share/sdk/Constant;->SEND_REQUEST_CONTENT_APPID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/share/sdk/openapi/channel/APMessageAct;->sendToZFB(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterApp()V
    .locals 5

    .prologue
    .line 57
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-direct {p0, v0}, Lcom/alipay/share/sdk/openapi/APApiImlV1;->checkSumConsistent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "Alipay.SDK.ZFBApiImlV1"

    const-string v1, "unregister app failed for alipay app signature check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "Alipay.SDK.ZFBApiImlV1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->context:Landroid/content/Context;

    const-string v1, "com.eg.android.AlipayGphone"

    .line 62
    sget-object v2, Lcom/alipay/share/sdk/Constant;->PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alipay/share/sdk/Constant;->ACTION_APP_UNREGISTER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/share/sdk/openapi/APApiImlV1;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/share/sdk/openapi/channel/APMessage;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "Alipay.SDK.ZFBApiImlV1"

    const-string v1, "unregisterApp fail, appId is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
