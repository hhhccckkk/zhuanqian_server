.class Lcn/yeeguo/YeeguoCheckPage$1;
.super Landroid/os/Handler;
.source "YeeguoCheckPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/YeeguoCheckPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/YeeguoCheckPage;


# direct methods
.method constructor <init>(Lcn/yeeguo/YeeguoCheckPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 78
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    :goto_1
    return-void

    .line 58
    :pswitch_0
    const-string v1, "yeeguo"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->page:Ljava/lang/String;
    invoke-static {v3}, Lcn/yeeguo/YeeguoCheckPage;->access$0(Lcn/yeeguo/YeeguoCheckPage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "##############start check###########"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/yeeguo/YeeguoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->page:Ljava/lang/String;
    invoke-static {v2}, Lcn/yeeguo/YeeguoCheckPage;->access$0(Lcn/yeeguo/YeeguoCheckPage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/yeeguo/YeeguoCheckPage;->access$1(Lcn/yeeguo/YeeguoCheckPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u518d\u4f53\u9a8c2\u5206\u949f\uff0c\u5373\u53ef\u83b7\u5f97\u5956\u52b1"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/yeeguo/YeeguoCheckPage;->access$1(Lcn/yeeguo/YeeguoCheckPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v1

    const-string v2, "exp_page"

    invoke-virtual {v1, v2}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, oldpage:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    .line 63
    const-string v0, ""

    .line 65
    :cond_0
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/yeeguo/YeeguoCheckPage;->access$1(Lcn/yeeguo/YeeguoCheckPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v1

    const-string v2, "exp_page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->page:Ljava/lang/String;
    invoke-static {v4}, Lcn/yeeguo/YeeguoCheckPage;->access$0(Lcn/yeeguo/YeeguoCheckPage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    invoke-virtual {v1}, Lcn/yeeguo/YeeguoCheckPage;->stop()V

    goto/16 :goto_1

    .line 69
    .end local v0           #oldpage:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #getter for: Lcn/yeeguo/YeeguoCheckPage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcn/yeeguo/YeeguoCheckPage;->access$2(Lcn/yeeguo/YeeguoCheckPage;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 72
    :pswitch_1
    iget-object v1, p0, Lcn/yeeguo/YeeguoCheckPage$1;->this$0:Lcn/yeeguo/YeeguoCheckPage;

    #calls: Lcn/yeeguo/YeeguoCheckPage;->listActivity()V
    invoke-static {v1}, Lcn/yeeguo/YeeguoCheckPage;->access$3(Lcn/yeeguo/YeeguoCheckPage;)V

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
