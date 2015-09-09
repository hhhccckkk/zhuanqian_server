.class public Lcom/qidian/intwal/r;
.super Landroid/os/Handler;


# instance fields
.field a:Lcom/qidian/intwal/j;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/qidian/intwal/j;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

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

    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->d()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->g()V

    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->h()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->e()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/qidian/intwal/r;->a:Lcom/qidian/intwal/j;

    invoke-virtual {v0}, Lcom/qidian/intwal/j;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
