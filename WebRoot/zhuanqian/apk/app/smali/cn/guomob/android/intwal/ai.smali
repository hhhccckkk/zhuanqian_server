.class Lcn/guomob/android/intwal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/guomob/android/intwal/ah;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/Service01;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/Service01;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/ai;->a:Lcn/guomob/android/intwal/Service01;

    iput-object p2, p0, Lcn/guomob/android/intwal/ai;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendUp.result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/h;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v2, "GUOMOB"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GUOMOB"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcn/guomob/android/intwal/ai;->a:Lcn/guomob/android/intwal/Service01;

    invoke-virtual {v2, v1}, Lcn/guomob/android/intwal/Service01;->a(Lorg/json/JSONObject;)V

    const-string v2, "Flag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Flag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "____"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/guomob/android/intwal/GMTestLog;->a(Ljava/lang/String;)V

    :cond_0
    const-string v2, "line"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hscd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "line"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "____"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/guomob/android/intwal/GMTestLog;->a(Ljava/lang/String;)V

    :cond_1
    const-string v2, "Pay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Pay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/guomob/android/intwal/ai;->a:Lcn/guomob/android/intwal/Service01;

    iget-object v2, v2, Lcn/guomob/android/intwal/Service01;->m:Landroid/content/Context;

    invoke-static {v2}, Lcn/guomob/android/intwal/GMUtils;->getCallBack(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcn/guomob/android/intwal/ai;->a:Lcn/guomob/android/intwal/Service01;

    invoke-virtual {v2, v1}, Lcn/guomob/android/intwal/Service01;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lcn/guomob/android/intwal/Service01;->d:Ljava/util/Set;

    iget-object v1, p0, Lcn/guomob/android/intwal/ai;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/guomob/android/intwal/ai;->a:Lcn/guomob/android/intwal/Service01;

    invoke-virtual {v2, v1}, Lcn/guomob/android/intwal/Service01;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
