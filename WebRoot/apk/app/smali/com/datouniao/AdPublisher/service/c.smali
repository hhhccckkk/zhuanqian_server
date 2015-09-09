.class Lcom/datouniao/AdPublisher/service/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/service/AdsService;

.field private b:Lcom/datouniao/AdPublisher/a/d;


# direct methods
.method public constructor <init>(Lcom/datouniao/AdPublisher/service/AdsService;Lcom/datouniao/AdPublisher/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/datouniao/AdPublisher/service/c;->b:Lcom/datouniao/AdPublisher/a/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v1, "dtn_sdk_key_app_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v2, "dtn_sdk_key_client_user_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v3, "dtn_sdk_key_device_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v4, "dtn_sdk_key_secret_key"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/a;->a(Landroid/content/Context;)Lcom/datouniao/AdPublisher/utils/a;

    move-result-object v0

    const-string v5, "dtn_sdk_key_ext_key"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/datouniao/AdPublisher/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/datouniao/AdPublisher/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual/range {v0 .. v5}, Lcom/datouniao/AdPublisher/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/datouniao/AdPublisher/w;

    invoke-direct {v2}, Lcom/datouniao/AdPublisher/w;-><init>()V

    const-string v0, "http://ws3b.datouniao.com/TaskFeedback?"

    invoke-virtual {v2, v0, v1}, Lcom/datouniao/AdPublisher/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "http://ws3a.datouniao.com/TaskFeedback?"

    invoke-virtual {v2, v0, v1}, Lcom/datouniao/AdPublisher/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v5, "error occour"

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->c(Lcom/datouniao/AdPublisher/service/AdsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/c;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/c;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-static {v0, v1, p1}, Lcom/datouniao/AdPublisher/service/AdsService;->a(Lcom/datouniao/AdPublisher/service/AdsService;Lcom/datouniao/AdPublisher/a/d;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/service/c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/service/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/datouniao/AdPublisher/service/c;->a:Lcom/datouniao/AdPublisher/service/AdsService;

    invoke-static {v0}, Lcom/datouniao/AdPublisher/service/AdsService;->c(Lcom/datouniao/AdPublisher/service/AdsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/service/c;->b:Lcom/datouniao/AdPublisher/a/d;

    invoke-virtual {v1}, Lcom/datouniao/AdPublisher/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
