.class Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;
.super Lcom/hck/httpserver/JsonHttpResponseHandler;
.source "DuiHuanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/DuiHuanActivity;->getDuiHuanJiLuData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/DuiHuanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    .line 37
    invoke-direct {p0}, Lcom/hck/httpserver/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onFinish(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "response"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/hck/httpserver/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 46
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hck/zhuanqian/util/LogUtil;->D(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    const-string v2, "isok"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->isOK:Z

    .line 49
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    iget-boolean v1, v1, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->isOK:Z

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    invoke-direct {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;-><init>()V

    .line 51
    .local v0, zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    const-class v2, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 51
    invoke-static {v1, v2}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    check-cast v0, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;

    .line 53
    .restart local v0       #zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    iget-object v1, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    #getter for: Lcom/hck/zhuanqian/ui/DuiHuanActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/hck/zhuanqian/ui/DuiHuanActivity;->access$0(Lcom/hck/zhuanqian/ui/DuiHuanActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/hck/zhuanqian/adapter/DHListAdpter;

    .line 54
    iget-object v3, p0, Lcom/hck/zhuanqian/ui/DuiHuanActivity$1;->this$0:Lcom/hck/zhuanqian/ui/DuiHuanActivity;

    .line 55
    invoke-virtual {v0}, Lcom/hck/zhuanqian/data/ZhuanQianJiLu;->getOrderBeans()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/hck/zhuanqian/adapter/DHListAdpter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #zhuanQianJiLu:Lcom/hck/zhuanqian/data/ZhuanQianJiLu;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method
