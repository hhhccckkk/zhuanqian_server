.class Lcom/qidian/intwal/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/a;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->c:Lcom/qidian/intwal/ScoreManagerCallBack;

    invoke-interface {v0, v1}, Lcom/qidian/intwal/ScoreManagerCallBack;->onSuccess(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v1, v1, Lcom/qidian/intwal/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result.fuck="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v1, v1, Lcom/qidian/intwal/a;->c:Lcom/qidian/intwal/ScoreManagerCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qidian/intwal/ScoreManagerCallBack;->onFail(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/qidian/intwal/b;->a:Lcom/qidian/intwal/a;

    iget-object v0, v0, Lcom/qidian/intwal/a;->c:Lcom/qidian/intwal/ScoreManagerCallBack;

    invoke-interface {v0, v1}, Lcom/qidian/intwal/ScoreManagerCallBack;->onFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
