.class Lcom/datouniao/AdPublisher/b/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/b/a;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b/b;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/b;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/b;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/datouniao/AdPublisher/b/f;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/b;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/b;->a:Lcom/datouniao/AdPublisher/b/a;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
