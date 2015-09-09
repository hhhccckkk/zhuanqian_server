.class Lcom/hck/zhuanqian/ui/QiDianActivity$1;
.super Ljava/lang/Object;
.source "QiDianActivity.java"

# interfaces
.implements Lcom/qidian/intwal/QDScoreCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hck/zhuanqian/ui/QiDianActivity;->startGetMoney(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;


# direct methods
.method constructor <init>(Lcom/hck/zhuanqian/ui/QiDianActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 46
    iget-object v4, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    const/4 v5, 0x0

    #setter for: Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I
    invoke-static {v4, v5}, Lcom/hck/zhuanqian/ui/QiDianActivity;->access$0(Lcom/hck/zhuanqian/ui/QiDianActivity;I)V

    .line 48
    :try_start_0
    invoke-static {p2}, Lcom/qidian/intwal/Utils;->getScoreMsgList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 49
    .local v3, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/qidian/intwal/ScoreAdMsg;>;"
    if-nez v3, :cond_1

    .line 66
    .end local v3           #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/qidian/intwal/ScoreAdMsg;>;"
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v3       #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/qidian/intwal/ScoreAdMsg;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    #getter for: Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I
    invoke-static {v4}, Lcom/hck/zhuanqian/ui/QiDianActivity;->access$1(Lcom/hck/zhuanqian/ui/QiDianActivity;)I

    move-result v4

    if-lez v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    const-string v5, "\u9e92\u70b9"

    iget-object v6, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    #getter for: Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I
    invoke-static {v6}, Lcom/hck/zhuanqian/ui/QiDianActivity;->access$1(Lcom/hck/zhuanqian/ui/QiDianActivity;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/hck/zhuanqian/ui/QiDianActivity;->savePoint(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v1           #i:I
    .end local v3           #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/qidian/intwal/ScoreAdMsg;>;"
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "hck"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eeee: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v4, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    invoke-virtual {v4}, Lcom/hck/zhuanqian/ui/QiDianActivity;->showGetMoneyErrorToast()V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/qidian/intwal/ScoreAdMsg;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qidian/intwal/ScoreAdMsg;

    .line 55
    .local v2, msg:Lcom/qidian/intwal/ScoreAdMsg;
    iget-object v4, p0, Lcom/hck/zhuanqian/ui/QiDianActivity$1;->this$0:Lcom/hck/zhuanqian/ui/QiDianActivity;

    invoke-virtual {v2}, Lcom/qidian/intwal/ScoreAdMsg;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    #setter for: Lcom/hck/zhuanqian/ui/QiDianActivity;->point:I
    invoke-static {v4, v5}, Lcom/hck/zhuanqian/ui/QiDianActivity;->access$0(Lcom/hck/zhuanqian/ui/QiDianActivity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
