.class Lcom/datouniao/AdPublisher/q;
.super Landroid/os/AsyncTask;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/datouniao/AdPublisher/p;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/datouniao/AdPublisher/p;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    iput-object p2, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/datouniao/AdPublisher/q;->f:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/16 v5, 0xce

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    const-string v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    const-string v2, "pkg="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/datouniao/AdPublisher/x;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/datouniao/AdPublisher/x;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/datouniao/AdPublisher/x;->a(Ljava/lang/String;Ljava/util/List;[B)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_3

    :cond_1
    if-eq v1, v5, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/datouniao/AdPublisher/q;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    const-string v1, "(404)\u4e0b\u8f7d\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    const-string v1, "(500)\u670d\u52a1\u7aef\u51fa\u73b0\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    const-string v1, "\u670d\u52a1\u5668\u65e0\u54cd\u5e94"

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/datouniao/AdPublisher/p;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datouniao/AdPublisher/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/AppConnect;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/datouniao/AdPublisher/p;->a(Ljava/util/Map;)V

    :cond_1
    iget v0, p0, Lcom/datouniao/AdPublisher/q;->a:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/datouniao/AdPublisher/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    invoke-static {v2}, Lcom/datouniao/AdPublisher/p;->b(Lcom/datouniao/AdPublisher/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/datouniao/AdPublisher/p;->a()Ljava/util/Map;

    move-result-object v0

    const-string v3, "DOWNLOAD_FAILED"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    invoke-static {v0, v4}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Z)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/p;->a(Lcom/datouniao/AdPublisher/p;Z)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/datouniao/AdPublisher/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/datouniao/AdPublisher/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/datouniao/AdPublisher/t;

    move-result-object v2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/q;->c:Lcom/datouniao/AdPublisher/p;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/q;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/q;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/datouniao/AdPublisher/q;->f:Ljava/lang/String;

    iget v5, p0, Lcom/datouniao/AdPublisher/q;->a:I

    iget-object v6, p0, Lcom/datouniao/AdPublisher/q;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/datouniao/AdPublisher/p;->a(Landroid/content/Context;Lcom/datouniao/AdPublisher/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/q;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/q;->a(Ljava/lang/Boolean;)V

    return-void
.end method
