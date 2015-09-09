.class Lcom/datouniao/AdPublisher/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/d;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/datouniao/AdPublisher/d;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-static {v2, v0, v1}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
