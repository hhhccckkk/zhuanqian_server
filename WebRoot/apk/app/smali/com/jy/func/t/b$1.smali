.class final Lcom/jy/func/t/b$1;
.super Lcom/jy/func/w/h;
.source "CYZ_CallFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jy/func/t/b;->a(Lcom/jy/func/lner/CheckPointListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bO:Lcom/jy/func/t/b;

.field private final synthetic bP:F

.field private final synthetic bQ:Lcom/jy/func/lner/CheckPointListener;


# direct methods
.method constructor <init>(Lcom/jy/func/t/b;FLcom/jy/func/lner/CheckPointListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jy/func/t/b$1;->bO:Lcom/jy/func/t/b;

    iput p2, p0, Lcom/jy/func/t/b$1;->bP:F

    iput-object p3, p0, Lcom/jy/func/t/b$1;->bQ:Lcom/jy/func/lner/CheckPointListener;

    .line 57
    invoke-direct {p0}, Lcom/jy/func/w/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 111
    iget-object v0, p0, Lcom/jy/func/t/b$1;->bQ:Lcom/jy/func/lner/CheckPointListener;

    new-instance v1, Lcom/jy/func/lner/ErrorInfo;

    .line 112
    const-string v2, "JYError"

    const-string v3, "fetch point error"

    invoke-direct {v1, v2, v3}, Lcom/jy/func/lner/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v0, v1}, Lcom/jy/func/lner/CheckPointListener;->onError(Lcom/jy/func/lner/ErrorInfo;)V

    .line 113
    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 10
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/jy/func/w/h;->a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 64
    :try_start_0
    const-string v5, "code"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 65
    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string v5, "dataList"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 68
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 102
    .end local v0           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 70
    .restart local v0       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v4, localJSONObject:Lorg/json/JSONObject;
    const-string v5, "overpoint"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 77
    iget v6, p0, Lcom/jy/func/t/b$1;->bP:F

    .line 74
    mul-float v1, v5, v6

    .line 80
    .local v1, iOverPoint:F
    const-string v5, "spendpoint"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 81
    iget v6, p0, Lcom/jy/func/t/b$1;->bP:F

    .line 78
    mul-float v2, v5, v6

    .line 83
    .local v2, iSpendPoint:F
    iget-object v5, p0, Lcom/jy/func/t/b$1;->bQ:Lcom/jy/func/lner/CheckPointListener;

    .line 84
    iget-object v6, p0, Lcom/jy/func/t/b$1;->bO:Lcom/jy/func/t/b;

    .line 86
    const/4 v7, 0x1

    .line 84
    invoke-static {v6, v1, v2, v7}, Lcom/jy/func/t/b;->a(Lcom/jy/func/t/b;FFI)Lcom/jy/func/lner/Point;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/jy/func/lner/CheckPointListener;->onResponse(Lcom/jy/func/lner/Point;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0           #i:I
    .end local v1           #iOverPoint:F
    .end local v2           #iSpendPoint:F
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #localJSONObject:Lorg/json/JSONObject;
    :cond_2
    iget-object v5, p0, Lcom/jy/func/t/b$1;->bQ:Lcom/jy/func/lner/CheckPointListener;

    iget-object v6, p0, Lcom/jy/func/t/b$1;->bO:Lcom/jy/func/t/b;

    .line 94
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 93
    invoke-static {v6, v7, v8, v9}, Lcom/jy/func/t/b;->a(Lcom/jy/func/t/b;FFI)Lcom/jy/func/lner/Point;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/jy/func/lner/CheckPointListener;->onResponse(Lcom/jy/func/lner/Point;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v5

    iget-object v5, p0, Lcom/jy/func/t/b$1;->bQ:Lcom/jy/func/lner/CheckPointListener;

    new-instance v6, Lcom/jy/func/lner/ErrorInfo;

    .line 100
    const-string v7, "JYError"

    const-string v8, "fetch point error"

    invoke-direct {v6, v7, v8}, Lcom/jy/func/lner/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v5, v6}, Lcom/jy/func/lner/CheckPointListener;->onError(Lcom/jy/func/lner/ErrorInfo;)V

    goto :goto_1
.end method
