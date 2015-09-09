.class public Lnet/midi/wall/sdk/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/midi/wall/sdk/b/b;->a(Lorg/json/JSONObject;)Lnet/midi/wall/sdk/AdDesc;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Lnet/midi/wall/sdk/AdDesc;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance v0, Lnet/midi/wall/sdk/AdDesc;

    invoke-direct {v0}, Lnet/midi/wall/sdk/AdDesc;-><init>()V

    const-string v3, "adId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->adId:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->title:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->text:Ljava/lang/String;

    const-string v3, "iconUrl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/midi/wall/sdk/d/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->icon:Landroid/graphics/Bitmap;

    const-string v3, "points"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->points:Ljava/lang/Integer;

    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->description:Ljava/lang/String;

    const-string v3, "appVersion"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->appVersion:Ljava/lang/String;

    const-string v3, "appSize"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->appSize:Ljava/lang/Integer;

    const-string v3, "appProvider"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->appProvider:Ljava/lang/String;

    const-string v3, "earnStep"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->earnStep:Ljava/lang/String;

    const-string v3, "status"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lnet/midi/wall/sdk/AdDesc;->status:I

    const-string v3, "statusMemo"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->statusMemo:Ljava/lang/String;

    :try_start_0
    const-string v3, "appImageUrls"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    move v3, v2

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lnet/midi/wall/sdk/AdDesc;->appImageUrls:[Ljava/lang/String;

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lnet/midi/wall/sdk/AdDesc;->appImageUrls:[Ljava/lang/String;

    const-string v5, "imageUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    const-string v1, "appPackageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/midi/wall/sdk/AdDesc;->appPackageName:Ljava/lang/String;

    const-string v1, "appAction"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/midi/wall/sdk/AdDesc;->appAction:Ljava/lang/String;

    :cond_3
    return-object v0
.end method
