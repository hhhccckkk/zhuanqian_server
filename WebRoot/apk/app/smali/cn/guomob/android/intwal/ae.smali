.class public Lcn/guomob/android/intwal/ae;
.super Landroid/os/Handler;


# instance fields
.field a:Lcn/guomob/android/intwal/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcn/guomob/android/intwal/s;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->d()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->e()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcn/guomob/android/intwal/ae;->a:Lcn/guomob/android/intwal/s;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/s;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
