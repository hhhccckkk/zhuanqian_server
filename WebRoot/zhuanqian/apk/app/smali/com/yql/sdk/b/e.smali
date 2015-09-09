.class final Lcom/yql/sdk/b/e;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/yql/sdk/b/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yql/sdk/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/yql/sdk/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yql/sdk/b/e;->b:Lcom/yql/sdk/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v1, Lcom/yql/sdk/b/b;

    iget-object v0, p0, Lcom/yql/sdk/b/e;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/yql/sdk/b/b;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/yql/sdk/b/d;->a(Lcom/yql/sdk/b/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/yql/sdk/b/f;

    iget-object v2, p0, Lcom/yql/sdk/b/e;->b:Lcom/yql/sdk/b/c;

    invoke-direct {v0, p0, v2}, Lcom/yql/sdk/b/f;-><init>(Lcom/yql/sdk/b/e;Lcom/yql/sdk/b/c;)V

    invoke-static {v0}, Lcom/yql/sdk/b/d;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yql/sdk/b/g;

    iget-object v3, p0, Lcom/yql/sdk/b/e;->b:Lcom/yql/sdk/b/c;

    iget-object v4, p0, Lcom/yql/sdk/b/e;->a:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/yql/sdk/b/g;-><init>(Lcom/yql/sdk/b/e;Lcom/yql/sdk/b/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yql/sdk/b/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DRHttpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u5931\u8d25  url--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yql/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c\u8bf7\u6c42\u5931\u8d25\uff0c\u539f\u56e0:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/yql/sdk/b/h;

    iget-object v2, p0, Lcom/yql/sdk/b/e;->b:Lcom/yql/sdk/b/c;

    invoke-direct {v1, p0, v2, v0}, Lcom/yql/sdk/b/h;-><init>(Lcom/yql/sdk/b/e;Lcom/yql/sdk/b/c;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/yql/sdk/b/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
