.class public Lcn/yeeguo/YeeguoLog;
.super Ljava/lang/Object;
.source "YeeguoLog.java"


# static fields
.field private static final MAX_STRING_SIZE:I = 0x1000

.field private static showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 45
    sget-boolean v0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 35
    sget-boolean v0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 15
    const-string v0, "YeeguoLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableLogging: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sput-boolean p0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    .line 17
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 20
    sget-boolean v3, Lcn/yeeguo/YeeguoLog;->showLog:Z

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_3

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit16 v3, v3, 0x1000

    if-le v1, v3, :cond_1

    .line 32
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-void

    .line 23
    .restart local v1       #i:I
    :cond_1
    mul-int/lit16 v2, v1, 0x1000

    .line 24
    .local v2, start:I
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v0, v3, 0x1000

    .line 25
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 26
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #start:I
    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 50
    sget-boolean v0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 40
    sget-boolean v0, Lcn/yeeguo/YeeguoLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
