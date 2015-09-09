.class public Lcom/jy/func/JYOfferWall;
.super Ljava/lang/Object;
.source "JYOfferWall.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static au:Lcom/jy/func/JYOfferWall;


# instance fields
.field private av:Lcom/jy/func/t/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/jy/func/JYOfferWall;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Lcom/jy/func/t/b;->c(Landroid/content/Context;)Lcom/jy/func/t/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jy/func/JYOfferWall;->av:Lcom/jy/func/t/b;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/jy/func/JYOfferWall;->au:Lcom/jy/func/JYOfferWall;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/jy/func/JYOfferWall;

    invoke-direct {v0, p0}, Lcom/jy/func/JYOfferWall;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jy/func/JYOfferWall;->au:Lcom/jy/func/JYOfferWall;

    .line 53
    :cond_0
    sget-object v0, Lcom/jy/func/JYOfferWall;->au:Lcom/jy/func/JYOfferWall;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jy/func/JYOfferWall;->getInstance(Landroid/content/Context;)Lcom/jy/func/JYOfferWall;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkPoints(Lcom/jy/func/lner/CheckPointListener;)V
    .locals 1
    .parameter "paramCheckPointsListener"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->av:Lcom/jy/func/t/b;

    invoke-virtual {v0, p1}, Lcom/jy/func/t/b;->a(Lcom/jy/func/lner/CheckPointListener;)V

    .line 71
    return-void
.end method

.method public consumePoints(ILcom/jy/func/lner/CheckPointListener;)V
    .locals 1
    .parameter "paramConsumePoint"
    .parameter "paramConsumeListener"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->av:Lcom/jy/func/t/b;

    invoke-virtual {v0, p1, p2}, Lcom/jy/func/t/b;->a(ILcom/jy/func/lner/CheckPointListener;)V

    .line 77
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uId"
    .parameter "appId"
    .parameter "appKey"

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jy/func/JYOfferWall;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "uId"
    .parameter "appId"
    .parameter "appKey"
    .parameter "userId"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->av:Lcom/jy/func/t/b;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/jy/func/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setOnSignOutListener(Lcom/jy/func/lner/SignOutListener;)V
    .locals 1
    .parameter "paramSignOutListener"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->av:Lcom/jy/func/t/b;

    invoke-virtual {v0, p1}, Lcom/jy/func/t/b;->a(Lcom/jy/func/lner/SignOutListener;)V

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->mContext:Landroid/content/Context;

    const-string v1, "JYTitle"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jy/func/JYOfferWall;->mContext:Landroid/content/Context;

    const-string v1, "JYTitle"

    invoke-static {v0, v1, p1}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public showOfferWall(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jy/func/JYOfferActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
