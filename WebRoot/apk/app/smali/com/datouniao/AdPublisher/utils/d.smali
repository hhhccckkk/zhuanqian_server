.class Lcom/datouniao/AdPublisher/utils/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/utils/c;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/utils/d;->a:Lcom/datouniao/AdPublisher/utils/c;

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
    iget-object v0, p0, Lcom/datouniao/AdPublisher/utils/d;->a:Lcom/datouniao/AdPublisher/utils/c;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/c;->a(Lcom/datouniao/AdPublisher/utils/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "toast_key_msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
