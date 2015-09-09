.class Lcom/datouniao/AdPublisher/l;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/datouniao/AdPublisher/AppConnect;


# direct methods
.method private constructor <init>(Lcom/datouniao/AdPublisher/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/datouniao/AdPublisher/AppConnect;Lcom/datouniao/AdPublisher/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/datouniao/AdPublisher/l;-><init>(Lcom/datouniao/AdPublisher/AppConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v1}, Lcom/datouniao/AdPublisher/AppConnect;->a(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/datouniao/AdPublisher/AppConnect;->a(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "timestamp="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v2}, Lcom/datouniao/AdPublisher/AppConnect;->b(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "verifier="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->c(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->d(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->b(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->e(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v3}, Lcom/datouniao/AdPublisher/AppConnect;->f(Lcom/datouniao/AdPublisher/AppConnect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/datouniao/AdPublisher/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/datouniao/AdPublisher/AppConnect;->a()Lcom/datouniao/AdPublisher/w;

    move-result-object v2

    const-string v3, "http://ws3b.datouniao.com/AdPublisherConnect?"

    invoke-virtual {v2, v3, v1}, Lcom/datouniao/AdPublisher/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v0, v2}, Lcom/datouniao/AdPublisher/AppConnect;->b(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/datouniao/AdPublisher/AppConnect;->a()Lcom/datouniao/AdPublisher/w;

    move-result-object v2

    const-string v3, "http://ws3a.datouniao.com/AdPublisherConnect?"

    invoke-virtual {v2, v3, v1}, Lcom/datouniao/AdPublisher/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/datouniao/AdPublisher/l;->a:Lcom/datouniao/AdPublisher/AppConnect;

    invoke-static {v0, v1}, Lcom/datouniao/AdPublisher/AppConnect;->b(Lcom/datouniao/AdPublisher/AppConnect;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/datouniao/AdPublisher/l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
