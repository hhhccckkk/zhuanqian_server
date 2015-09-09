.class public final Lcom/jy/func/f;
.super Ljava/lang/Object;
.source "CYZTaskDetailMode.java"


# instance fields
.field private ak:Ljava/lang/String;

.field private al:I

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/jy/func/f;->c:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/jy/func/f;->b:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/jy/func/f;->ak:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/jy/func/f;->al:I

    .line 31
    iput-object v1, p0, Lcom/jy/func/f;->d:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/jy/func/f;->e:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/jy/func/f;->f:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/jy/func/f;->g:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/jy/func/f;->h:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/jy/func/f;->am:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/jy/func/f;->an:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/jy/func/f;->ao:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/jy/func/f;->ap:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/jy/func/f;->aq:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/jy/func/f;->ar:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Lcom/jy/func/f;
    .locals 1
    .parameter "array"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jy/func/f;->p(Ljava/lang/String;)Lcom/jy/func/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter "softImg"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jy/func/f;->b:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jy/func/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter "softName"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jy/func/f;->c:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jy/func/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter "softAPKname"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jy/func/f;->d:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jy/func/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .locals 0
    .parameter "softTaskTime"

    .prologue
    .line 58
    iput p1, p0, Lcom/jy/func/f;->al:I

    .line 59
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter "softDesc"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/jy/func/f;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jy/func/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter "softScore"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/jy/func/f;->g:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter "softSize"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jy/func/f;->h:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jy/func/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0
    .parameter "softPackName"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jy/func/f;->e:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jy/func/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0
    .parameter "softUrl"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jy/func/f;->ak:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 0
    .parameter "softRequire"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jy/func/f;->am:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 0
    .parameter "softSignNum"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jy/func/f;->an:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 0
    .parameter "softSignPrice"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jy/func/f;->ao:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 0
    .parameter "softPic1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jy/func/f;->ap:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 0
    .parameter "softPic2"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jy/func/f;->aq:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 0
    .parameter "softContent"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/jy/func/f;->ar:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static p(Ljava/lang/String;)Lcom/jy/func/f;
    .locals 4
    .parameter "json"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, localJSONObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/jy/func/f;

    invoke-direct {v1}, Lcom/jy/func/f;-><init>()V

    .line 154
    .local v1, localList:Lcom/jy/func/f;
    const-string v3, "adname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->c:Ljava/lang/String;

    .line 155
    const-string v3, "adprice"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->g:Ljava/lang/String;

    .line 157
    const-string v3, "adsecond"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/jy/func/f;->al:I

    .line 158
    const-string v3, "adlogo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->b:Ljava/lang/String;

    .line 159
    const-string v3, "adurl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->ak:Ljava/lang/String;

    .line 160
    const-string v3, "packname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->e:Ljava/lang/String;

    .line 161
    const-string v3, "apkname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->d:Ljava/lang/String;

    .line 162
    const-string v3, "adsize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->h:Ljava/lang/String;

    .line 163
    const-string v3, "subtitle"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->f:Ljava/lang/String;

    .line 165
    const-string v3, "adarticle"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->am:Ljava/lang/String;

    .line 166
    const-string v3, "signnum"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->an:Ljava/lang/String;

    .line 167
    const-string v3, "signprice"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->ao:Ljava/lang/String;

    .line 168
    const-string v3, "adpic1"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->ap:Ljava/lang/String;

    .line 169
    const-string v3, "adpic2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->aq:Ljava/lang/String;

    .line 170
    const-string v3, "content"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/jy/func/f;->ar:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0           #localJSONObject:Lorg/json/JSONObject;
    .end local v1           #localList:Lcom/jy/func/f;
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 178
    goto :goto_0
.end method

.method private y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jy/func/f;->an:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jy/func/f;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jy/func/f;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jy/func/f;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jy/func/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/jy/func/f;->al:I

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jy/func/f;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jy/func/f;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jy/func/f;->ao:Ljava/lang/String;

    return-object v0
.end method
