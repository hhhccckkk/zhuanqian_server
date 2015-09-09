.class Lcom/datouniao/AdPublisher/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/t;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/t;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/v;->a:Lcom/datouniao/AdPublisher/t;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/v;->a:Lcom/datouniao/AdPublisher/t;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/t;->a(Lcom/datouniao/AdPublisher/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/v;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/datouniao/AdPublisher/t;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
