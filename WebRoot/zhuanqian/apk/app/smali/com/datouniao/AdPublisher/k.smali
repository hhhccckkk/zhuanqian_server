.class Lcom/datouniao/AdPublisher/k;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/datouniao/AdPublisher/t;


# direct methods
.method public constructor <init>(Lcom/datouniao/AdPublisher/AdsOffersWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/datouniao/AdPublisher/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/datouniao/AdPublisher/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/datouniao/AdPublisher/k;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/datouniao/AdPublisher/p;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/p;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/k;->e:Lcom/datouniao/AdPublisher/t;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/k;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/datouniao/AdPublisher/k;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/datouniao/AdPublisher/k;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/datouniao/AdPublisher/p;->a(Landroid/content/Context;Lcom/datouniao/AdPublisher/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/k;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/k;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/datouniao/AdPublisher/t;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/datouniao/AdPublisher/k;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/datouniao/AdPublisher/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datouniao/AdPublisher/k;->e:Lcom/datouniao/AdPublisher/t;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/k;->e:Lcom/datouniao/AdPublisher/t;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/k;->a:Lcom/datouniao/AdPublisher/AdsOffersWebView;

    invoke-static {v1}, Lcom/datouniao/AdPublisher/AdsOffersWebView;->a(Lcom/datouniao/AdPublisher/AdsOffersWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/datouniao/AdPublisher/t;->a(Landroid/os/Handler;)V

    return-void
.end method
