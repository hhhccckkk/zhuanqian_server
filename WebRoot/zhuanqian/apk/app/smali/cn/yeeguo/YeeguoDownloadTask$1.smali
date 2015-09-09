.class Lcn/yeeguo/YeeguoDownloadTask$1;
.super Landroid/os/Handler;
.source "YeeguoDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/YeeguoDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yeeguo/YeeguoDownloadTask;


# direct methods
.method constructor <init>(Lcn/yeeguo/YeeguoDownloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 236
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 301
    return-void

    .line 238
    :pswitch_0
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #calls: Lcn/yeeguo/YeeguoDownloadTask;->handleUpdateProgress()V
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$4(Lcn/yeeguo/YeeguoDownloadTask;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v4

    invoke-virtual {v4}, Lcn/yeeguo/YeeguoAdvs;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/yeeguo/YeeguoUtil;->checkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v4

    invoke-virtual {v4}, Lcn/yeeguo/YeeguoAdvs;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/yeeguo/YeeguoUtil;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v3

    invoke-virtual {v3}, Lcn/yeeguo/YeeguoAdvs;->getComplete_page()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/yeeguo/YeeguoUtil;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$6(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoCheckPage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->yeeguoCheckPage:Lcn/yeeguo/YeeguoCheckPage;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$6(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoCheckPage;

    move-result-object v3

    iget-object v4, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v4

    invoke-virtual {v4}, Lcn/yeeguo/YeeguoAdvs;->getComplete_page()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/yeeguo/YeeguoCheckPage;->start(Ljava/lang/String;)V

    .line 254
    :cond_1
    const-string v0, ""

    .line 255
    .local v0, expdes:Ljava/lang/String;
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v3

    invoke-virtual {v3}, Lcn/yeeguo/YeeguoAdvs;->getComplete_require()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 258
    .local v2, showMsg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 259
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 266
    .end local v0           #expdes:Ljava/lang/String;
    .end local v2           #showMsg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 271
    :pswitch_3
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$8(Lcn/yeeguo/YeeguoDownloadTask;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I
    invoke-static {v3, v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$9(Lcn/yeeguo/YeeguoDownloadTask;I)V

    .line 273
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v4

    invoke-virtual {v4}, Lcn/yeeguo/YeeguoAdvs;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/yeeguo/YeeguoUtil;->checkRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->isconnect:Z
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$10(Lcn/yeeguo/YeeguoDownloadTask;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 275
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v3

    invoke-virtual {v3}, Lcn/yeeguo/YeeguoAdvs;->getComplete_page()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/yeeguo/YeeguoUtil;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getInstance(Landroid/content/Context;)Lcn/yeeguo/YeeguoSharedPreferenceUtil;

    move-result-object v3

    .line 278
    const-string v4, "exp_page"

    .line 277
    invoke-virtual {v3, v4}, Lcn/yeeguo/YeeguoSharedPreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, page:Ljava/lang/String;
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v3

    invoke-virtual {v3}, Lcn/yeeguo/YeeguoAdvs;->getComplete_page()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 285
    .end local v1           #page:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/yeeguo/Yeeguo;->getInstance(Landroid/content/Context;)Lcn/yeeguo/Yeeguo;

    move-result-object v3

    iget-object v4, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/yeeguo/YeeguoDownloadTask;->access$3(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v5}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v5

    invoke-virtual {v5}, Lcn/yeeguo/YeeguoAdvs;->getAid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v6}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v6

    invoke-virtual {v6}, Lcn/yeeguo/YeeguoAdvs;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 286
    iget-object v7, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->advs:Lcn/yeeguo/YeeguoAdvs;
    invoke-static {v7}, Lcn/yeeguo/YeeguoDownloadTask;->access$5(Lcn/yeeguo/YeeguoDownloadTask;)Lcn/yeeguo/YeeguoAdvs;

    move-result-object v7

    invoke-virtual {v7}, Lcn/yeeguo/YeeguoAdvs;->getExpcount()Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/yeeguo/Yeeguo;->adComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #setter for: Lcn/yeeguo/YeeguoDownloadTask;->isconnect:Z
    invoke-static {v3, v9}, Lcn/yeeguo/YeeguoDownloadTask;->access$11(Lcn/yeeguo/YeeguoDownloadTask;Z)V

    goto/16 :goto_0

    .line 291
    :cond_4
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->check_install_count:I
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$8(Lcn/yeeguo/YeeguoDownloadTask;)I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_0

    .line 292
    iget-object v3, p0, Lcn/yeeguo/YeeguoDownloadTask$1;->this$0:Lcn/yeeguo/YeeguoDownloadTask;

    #getter for: Lcn/yeeguo/YeeguoDownloadTask;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/yeeguo/YeeguoDownloadTask;->access$7(Lcn/yeeguo/YeeguoDownloadTask;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
