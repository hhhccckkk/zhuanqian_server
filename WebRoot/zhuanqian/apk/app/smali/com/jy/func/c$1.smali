.class final Lcom/jy/func/c$1;
.super Lcom/jy/func/w/h;
.source "CYZTabOneFrgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/c;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic t:Lcom/jy/func/c;


# direct methods
.method constructor <init>(Lcom/jy/func/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/c$1;->t:Lcom/jy/func/c;

    .line 118
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
    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 136
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 124
    iget-object v0, p0, Lcom/jy/func/c$1;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->d(Lcom/jy/func/c;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/jy/func/c$1;->t:Lcom/jy/func/c;

    invoke-static {v1}, Lcom/jy/func/c;->a(Lcom/jy/func/c;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    .line 124
    invoke-static {v0, p3, v1, v2}, Lcom/jy/func/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 126
    iget-object v0, p0, Lcom/jy/func/c$1;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->e(Lcom/jy/func/c;)Lcom/jy/func/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/d;->aW()V

    .line 127
    iget-object v0, p0, Lcom/jy/func/c$1;->t:Lcom/jy/func/c;

    invoke-static {v0}, Lcom/jy/func/c;->c(Lcom/jy/func/c;)Lcom/jy/func/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jy/func/l/a;->notifyDataSetChanged()V

    .line 128
    return-void
.end method
