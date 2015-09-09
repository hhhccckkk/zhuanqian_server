.class final Lcom/jy/func/e$1;
.super Lcom/jy/func/w/h;
.source "CYZTaskDetailFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ah:Lcom/jy/func/e;


# direct methods
.method constructor <init>(Lcom/jy/func/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/e$1;->ah:Lcom/jy/func/e;

    .line 253
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
    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 276
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 260
    :try_start_0
    const-string v1, "dataList"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/jy/func/f;->a(Lorg/json/JSONArray;)Lcom/jy/func/f;

    move-result-object v0

    .line 263
    .local v0, taskDetailMode:Lcom/jy/func/f;
    iget-object v1, p0, Lcom/jy/func/e$1;->ah:Lcom/jy/func/e;

    invoke-static {v1, v0}, Lcom/jy/func/e;->a(Lcom/jy/func/e;Lcom/jy/func/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0           #taskDetailMode:Lcom/jy/func/f;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
