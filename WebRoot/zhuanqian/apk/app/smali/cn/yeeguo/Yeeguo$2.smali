.class Lcn/yeeguo/Yeeguo$2;
.super Ljava/lang/Object;
.source "Yeeguo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yeeguo/Yeeguo;->adComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/Yeeguo;

.field private final synthetic val$adid:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$expcount:Ljava/lang/String;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/yeeguo/Yeeguo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/Yeeguo$2;->this$0:Lcn/yeeguo/Yeeguo;

    iput-object p2, p0, Lcn/yeeguo/Yeeguo$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/yeeguo/Yeeguo$2;->val$adid:Ljava/lang/String;

    iput-object p4, p0, Lcn/yeeguo/Yeeguo$2;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcn/yeeguo/Yeeguo$2;->val$expcount:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 146
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$2;->val$context:Landroid/content/Context;

    #calls: Lcn/yeeguo/Yeeguo;->verifyInit(Landroid/content/Context;)Z
    invoke-static {v0}, Lcn/yeeguo/Yeeguo;->access$0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    const-string v1, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25..."

    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 152
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/yeeguo/Yeeguo$2;->val$adid:Ljava/lang/String;

    .line 153
    iget-object v11, p0, Lcn/yeeguo/Yeeguo$2;->val$token:Ljava/lang/String;

    iget-object v12, p0, Lcn/yeeguo/Yeeguo$2;->val$expcount:Ljava/lang/String;

    .line 152
    invoke-static {v0, v1, v11, v12}, Lcn/yeeguo/YeeguoHttpRequest;->adcomplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, result:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, json:Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 157
    const-string v0, "totalscore"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, allscore:I
    const-string v0, "award"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, award:I
    const-string v0, "unit"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, unit:Ljava/lang/String;
    const-string v0, "appid"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, appid:Ljava/lang/String;
    const-string v0, "appname"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, appname:Ljava/lang/String;
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 164
    const/4 v1, 0x4

    .line 163
    invoke-interface/range {v0 .. v6}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoScoreListener(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v2           #allscore:I
    .end local v3           #award:I
    .end local v4           #unit:Ljava/lang/String;
    .end local v5           #appid:Ljava/lang/String;
    .end local v6           #appname:Ljava/lang/String;
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v10           #result:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 168
    .restart local v8       #json:Lorg/json/JSONObject;
    .restart local v10       #result:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    .line 170
    const-string v1, "errormsg"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    .line 173
    :cond_3
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 174
    .local v9, msg:Landroid/os/Message;
    const/16 v0, 0x2711

    iput v0, v9, Landroid/os/Message;->what:I

    .line 175
    const-string v0, "errormsg"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcn/yeeguo/Yeeguo$2;->this$0:Lcn/yeeguo/Yeeguo;

    #getter for: Lcn/yeeguo/Yeeguo;->offerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/yeeguo/Yeeguo;->access$1(Lcn/yeeguo/Yeeguo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #result:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 180
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcn/yeeguo/Yeeguo;->offerScoreListener:Lcn/yeeguo/YeeguoScoreOnListener;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/yeeguo/YeeguoScoreOnListener;->yeeguoErrorListener(Ljava/lang/String;)V

    goto :goto_0
.end method
