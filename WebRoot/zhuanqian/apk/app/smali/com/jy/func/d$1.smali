.class final Lcom/jy/func/d$1;
.super Lcom/jy/func/w/h;
.source "CYZTabTwoFrgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/d;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic v:Lcom/jy/func/d;


# direct methods
.method constructor <init>(Lcom/jy/func/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/d$1;->v:Lcom/jy/func/d;

    .line 96
    invoke-direct {p0}, Lcom/jy/func/w/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 112
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 101
    iget-object v0, p0, Lcom/jy/func/d$1;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->d(Lcom/jy/func/d;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/jy/func/d$1;->v:Lcom/jy/func/d;

    invoke-static {v1}, Lcom/jy/func/d;->a(Lcom/jy/func/d;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    .line 101
    invoke-static {v0, p3, v1, v2}, Lcom/jy/func/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 103
    iget-object v0, p0, Lcom/jy/func/d$1;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->e(Lcom/jy/func/d;)Lcom/jy/func/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    .line 104
    iget-object v0, p0, Lcom/jy/func/d$1;->v:Lcom/jy/func/d;

    invoke-static {v0}, Lcom/jy/func/d;->c(Lcom/jy/func/d;)Lcom/jy/func/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/a;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
