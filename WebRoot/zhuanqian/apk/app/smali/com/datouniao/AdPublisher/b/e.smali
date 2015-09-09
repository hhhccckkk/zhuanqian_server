.class Lcom/datouniao/AdPublisher/b/e;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/b/d;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/datouniao/AdPublisher/w;

    invoke-direct {v0}, Lcom/datouniao/AdPublisher/w;-><init>()V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/e;->b:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/datouniao/AdPublisher/b/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/datouniao/AdPublisher/b/f;->b(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/b/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/datouniao/AdPublisher/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/b/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/b/e;->a:Lcom/datouniao/AdPublisher/b/d;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/d;->a(Lcom/datouniao/AdPublisher/b/d;)Lcom/datouniao/AdPublisher/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/b/a;->a(Lcom/datouniao/AdPublisher/b/a;)Lcom/datouniao/AdPublisher/b/f;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-interface {v0, v1, v2}, Lcom/datouniao/AdPublisher/b/f;->b(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
