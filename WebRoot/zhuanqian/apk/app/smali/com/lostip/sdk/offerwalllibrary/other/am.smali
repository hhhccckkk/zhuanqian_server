.class Lcom/lostip/sdk/offerwalllibrary/other/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/aj;


# direct methods
.method private constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/am;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/am;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/am;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->d([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lostip/sdk/offerwalllibrary/other/ak;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/am;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/ak;->a(Lcom/lostip/sdk/offerwalllibrary/other/ak;)Lcom/lostip/sdk/offerwalllibrary/other/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/al;->a()V

    goto :goto_0
.end method
