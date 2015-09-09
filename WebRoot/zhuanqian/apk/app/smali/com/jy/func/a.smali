.class public final Lcom/jy/func/a;
.super Ljava/lang/Object;
.source "CYZHotListMode.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/jy/func/a;->a:I

    .line 26
    iput-object v1, p0, Lcom/jy/func/a;->b:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/jy/func/a;->c:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/jy/func/a;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/jy/func/a;->e:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/jy/func/a;->f:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/jy/func/a;->g:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/jy/func/a;->h:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;F)Lcom/jy/func/a;
    .locals 5
    .parameter "json"
    .parameter "SoftUnit"
    .parameter "SoftRate"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, localJSONObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/jy/func/a;

    invoke-direct {v1}, Lcom/jy/func/a;-><init>()V

    .line 110
    .local v1, localList:Lcom/jy/func/a;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/jy/func/a;->a:I

    .line 111
    const-string v3, "adlogo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/a;->b:Ljava/lang/String;

    .line 112
    const-string v3, "adname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/a;->c:Ljava/lang/String;

    .line 113
    const-string v3, "apkname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 113
    iput-object v3, v1, Lcom/jy/func/a;->d:Ljava/lang/String;

    .line 115
    const-string v3, "subtitle"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 115
    iput-object v3, v1, Lcom/jy/func/a;->f:Ljava/lang/String;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    const-string v4, "price"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 118
    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    iput-object v3, v1, Lcom/jy/func/a;->g:Ljava/lang/String;

    .line 119
    const-string v3, "adsize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/a;->h:Ljava/lang/String;

    .line 120
    const-string v3, "packname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 120
    iput-object v3, v1, Lcom/jy/func/a;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #localJSONObject:Lorg/json/JSONObject;
    .end local v1           #localList:Lcom/jy/func/a;
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 128
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "mContext"
    .parameter "response"
    .parameter
    .parameter "panDuan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jy/func/a;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jy/func/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jy/func/a;>;"
    :try_start_0
    const-string v8, "unit"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, SoftUnit:Ljava/lang/String;
    const-string v8, "rate"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, SoftRate:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 140
    .local v3, fSoftRate:F
    const-string v8, "0x111126"

    invoke-static {p0, v8}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 141
    const-string v8, "0x111126"

    invoke-static {p0, v8, v0}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    :cond_0
    const-string v8, "0x111127"

    invoke-static {p0, v8}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    const-string v8, "0x111127"

    invoke-static {p0, v8, v1}, Lcom/jy/func/t/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :cond_1
    const-string v8, "dataList"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 149
    .local v5, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 150
    if-eqz v5, :cond_6

    .line 151
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 181
    .end local v0           #SoftRate:Ljava/lang/String;
    .end local v1           #SoftUnit:Ljava/lang/String;
    .end local v3           #fSoftRate:F
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local p2           #localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jy/func/a;>;"
    :goto_1
    return-object p2

    .line 154
    .restart local v0       #SoftRate:Ljava/lang/String;
    .restart local v1       #SoftUnit:Ljava/lang/String;
    .restart local v3       #fSoftRate:F
    .restart local v4       #i:I
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    .restart local p2       #localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jy/func/a;>;"
    :cond_2
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-static {v8, v1, v3}, Lcom/jy/func/a;->a(Ljava/lang/String;Ljava/lang/String;F)Lcom/jy/func/a;

    move-result-object v6

    .line 156
    .local v6, localList:Lcom/jy/func/a;
    const/4 v8, 0x1

    if-ne p3, v8, :cond_5

    .line 158
    iget-object v8, v6, Lcom/jy/func/a;->e:Ljava/lang/String;

    .line 157
    invoke-static {p0, v8}, Lcom/jy/func/t/h;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 160
    .local v7, packageNameExist:Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/CYZ_DownLoad/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v9, v6, Lcom/jy/func/a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jy/func/t/h;->A(Ljava/lang/String;)Z

    move-result v2

    .line 162
    .local v2, apkExist:Z
    if-eqz v7, :cond_3

    if-eqz v2, :cond_4

    .line 165
    :cond_3
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2           #apkExist:Z
    .end local v7           #packageNameExist:Z
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 176
    .end local v0           #SoftRate:Ljava/lang/String;
    .end local v1           #SoftUnit:Ljava/lang/String;
    .end local v3           #fSoftRate:F
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #localList:Lcom/jy/func/a;
    :catch_0
    move-exception v8

    .line 178
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    :cond_6
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 0
    .parameter "softId"

    .prologue
    .line 45
    iput p1, p0, Lcom/jy/func/a;->a:I

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter "softImg"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jy/func/a;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter "softName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jy/func/a;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter "softAPKname"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jy/func/a;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter "softDesc"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jy/func/a;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter "softScore"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jy/func/a;->g:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter "softSize"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jy/func/a;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackName"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jy/func/a;->e:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/jy/func/a;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jy/func/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jy/func/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jy/func/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jy/func/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jy/func/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jy/func/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jy/func/a;->e:Ljava/lang/String;

    return-object v0
.end method
