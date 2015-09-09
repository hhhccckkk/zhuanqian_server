.class Lcn/guomob/android/intwal/n;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/GuomobIntWaActivity;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/GuomobIntWaActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/n;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/guomob/android/intwal/n;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/GuomobIntWaActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/guomob/android/intwal/n;->a:Lcn/guomob/android/intwal/GuomobIntWaActivity;

    iget-object v0, v0, Lcn/guomob/android/intwal/GuomobIntWaActivity;->a:Landroid/app/Activity;

    const-string v1, "\u7f51\u7edc\u52a0\u8f7d\u8d85\u65f6\uff0c\u8bf7\u66f4\u6362\u73af\u5883"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
