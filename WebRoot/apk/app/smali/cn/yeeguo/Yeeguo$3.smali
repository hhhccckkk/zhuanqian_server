.class Lcn/yeeguo/Yeeguo$3;
.super Ljava/lang/Object;
.source "Yeeguo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yeeguo/Yeeguo;->getTotalScore(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcn/yeeguo/YeeguoScoreOnListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/yeeguo/YeeguoScoreOnListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/Yeeguo$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/yeeguo/Yeeguo$3;->val$listener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 205
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$context:Landroid/content/Context;

    #calls: Lcn/yeeguo/Yeeguo;->verifyInit(Landroid/content/Context;)Z
    invoke-static {v0}, Lcn/yeeguo/Yeeguo;->access$0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$listener:Lcn/yeeguo/YeeguoScoreOnListener;

    const-string v1, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25..."

    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/yeeguo/YeeguoHttpRequest;->totalscore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, result:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v8, json:Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 213
    const-string v0, "totalscore"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, allscore:I
    const-string v0, "unit"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, unit:Ljava/lang/String;
    const-string v5, ""

    .line 216
    .local v5, appid:Ljava/lang/String;
    const-string v6, ""

    .line 217
    .local v6, appname:Ljava/lang/String;
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$listener:Lcn/yeeguo/YeeguoScoreOnListener;

    const/4 v1, 0x1

    .line 218
    const/4 v3, 0x0

    .line 217
    invoke-interface/range {v0 .. v6}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoScoreListener(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v2           #allscore:I
    .end local v4           #unit:Ljava/lang/String;
    .end local v5           #appid:Ljava/lang/String;
    .end local v6           #appname:Ljava/lang/String;
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #result:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 220
    .restart local v8       #json:Lorg/json/JSONObject;
    .restart local v9       #result:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$listener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 221
    const-string v1, "errormsg"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #result:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 225
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$3;->val$listener:Lcn/yeeguo/YeeguoScoreOnListener;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    goto :goto_0
.end method
