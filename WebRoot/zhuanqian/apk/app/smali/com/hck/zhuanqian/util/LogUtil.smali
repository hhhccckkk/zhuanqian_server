.class public Lcom/hck/zhuanqian/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hck"

.field public static isPrintLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 10
    sget-boolean v0, Lcom/hck/zhuanqian/util/LogUtil;->isPrintLog:Z

    if-eqz v0, :cond_0

    .line 11
    const-string v0, "hck"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method
