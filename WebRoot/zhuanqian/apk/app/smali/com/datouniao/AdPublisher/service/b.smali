.class Lcom/datouniao/AdPublisher/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/service/AdsService;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/service/AdsService;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/a/e;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-virtual {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0, v5}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/f;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v1}, Lcom/datouniao/AdPublisher/a/e;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/a/e;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/datouniao/AdPublisher/a/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/datouniao/AdPublisher/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0, v6}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0, v5}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v1, v0}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->b(Lcom/datouniao/AdPublisher/service/AdsService;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/c;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v2}, Lcom/datouniao/AdPublisher/service/AdsService;->b(Lcom/datouniao/AdPublisher/service/AdsService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/datouniao/AdPublisher/service/AdsService;->b(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/utils/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0, v6}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Landroid/content/ComponentName;)V

    :cond_5
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/b;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0, v5}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Z)V

    goto :goto_0
.end method
