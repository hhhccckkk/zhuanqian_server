.class Lcom/dlnetwork/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dlnetwork/af;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/dlnetwork/af;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    iput-object p2, p0, Lcom/dlnetwork/ar;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/dlnetwork/bf;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    iget-object v2, p0, Lcom/dlnetwork/ar;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/dlnetwork/af;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dlnetwork/at;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1, v0}, Lcom/dlnetwork/af;->a(Lcom/dlnetwork/af;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->i(Lcom/dlnetwork/af;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->j(Lcom/dlnetwork/af;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    iget-object v2, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    const-string v3, "status"

    invoke-virtual {v2, v0, v3}, Lcom/dlnetwork/af;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dlnetwork/af;->a(Lcom/dlnetwork/af;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->d(Lcom/dlnetwork/af;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1, v0}, Lcom/dlnetwork/af;->a(Lcom/dlnetwork/af;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->i(Lcom/dlnetwork/af;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->j(Lcom/dlnetwork/af;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->d(Lcom/dlnetwork/af;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->i(Lcom/dlnetwork/af;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->j(Lcom/dlnetwork/af;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    const-string v2, "user_account"

    invoke-virtual {v1, v0, v2}, Lcom/dlnetwork/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    const-string v3, "currency_name"

    invoke-virtual {v2, v0, v3}, Lcom/dlnetwork/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    const-string v4, "display"

    invoke-virtual {v3, v0, v4}, Lcom/dlnetwork/af;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/dlnetwork/ar;->b:Landroid/content/Context;

    sget-object v3, Lcom/dlnetwork/bb;->i:Ljava/lang/String;

    const-string v4, "true"

    invoke-static {v0, v3, v4}, Lcom/dlnetwork/bm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v0, ""

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->i(Lcom/dlnetwork/af;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->j(Lcom/dlnetwork/af;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dlnetwork/ar;->b:Landroid/content/Context;

    sget-object v3, Lcom/dlnetwork/bb;->i:Ljava/lang/String;

    const-string v4, "false"

    invoke-static {v0, v3, v4}, Lcom/dlnetwork/bm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v3, v0, v1, v2}, Lcom/dlnetwork/af;->a(Lcom/dlnetwork/af;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->i(Lcom/dlnetwork/af;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/ar;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->k(Lcom/dlnetwork/af;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
