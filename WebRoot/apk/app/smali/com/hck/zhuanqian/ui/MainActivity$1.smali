.class Lcom/hck/zhuanqian/ui/MainActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/MainActivity;->getHongBaoAndMsgSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/MainActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    .line 95
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 8
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 105
    :try_start_0
    const-string v5, "msgId"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 106
    .local v1, msgId:J
    const-string v5, "msgId"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hck/zhuanqian/util/MyPreferences;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 107
    .local v3, oldMsgId:J
    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/MainActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    const/4 v6, 0x0

    #calls: Lcom/hck/zhuanqian/ui/MainActivity;->remindMsg(I)V
    invoke-static {v5, v6}, Lcom/hck/zhuanqian/ui/MainActivity;->access$0(Lcom/hck/zhuanqian/ui/MainActivity;I)V

    .line 109
    const-string v5, "isShowMsg"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/hck/zhuanqian/util/MyPreferences;->saveBoolean(Ljava/lang/String;Z)V

    .line 113
    :goto_0
    const-string v5, "msgId"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hck/zhuanqian/util/MyPreferences;->saveLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v5, "hongbaoSize"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, hongbaoSize:I
    iget-object v5, p0, Lcom/hck/zhuanqian/ui/MainActivity$1;->this$0:Lcom/hck/zhuanqian/ui/MainActivity;

    #calls: Lcom/hck/zhuanqian/ui/MainActivity;->remindHB(I)V
    invoke-static {v5, v0}, Lcom/hck/zhuanqian/ui/MainActivity;->access$1(Lcom/hck/zhuanqian/ui/MainActivity;I)V

    .line 119
    .end local v0           #hongbaoSize:I
    .end local v1           #msgId:J
    .end local v3           #oldMsgId:J
    :goto_1
    return-void

    .line 111
    .restart local v1       #msgId:J
    .restart local v3       #oldMsgId:J
    :cond_0
    const-string v5, "isShowMsg"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hck/zhuanqian/util/MyPreferences;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #msgId:J
    .end local v3           #oldMsgId:J
    :catch_0
    move-exception v5

    goto :goto_1
.end method
