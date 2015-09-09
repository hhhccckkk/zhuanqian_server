.class Lcom/datouniao/AdPublisher/service/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/service/AdsService;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/service/AdsService;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/service/a;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/a;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v1, v0}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Ljava/lang/String;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
