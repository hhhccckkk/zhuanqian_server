.class Lcom/qidian/intwal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qidian/intwal/ScoreManagerCallBack;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/Service01;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/Service01;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    iput-object p2, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "up req is fail.msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    iget-object v1, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/Service01;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interval.result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    iget-object v1, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/qidian/intwal/Service01;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    iget-object v1, v1, Lcom/qidian/intwal/Service01;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/qidian/intwal/Utils;->e(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service01.154.type.packName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    invoke-virtual {v2, v0}, Lcom/qidian/intwal/Service01;->d(Ljava/lang/String;)V

    :cond_0
    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    invoke-virtual {v1, v0}, Lcom/qidian/intwal/Service01;->e(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "go to OnSuccess.170.packName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/z;->a:Lcom/qidian/intwal/Service01;

    iget-object v1, p0, Lcom/qidian/intwal/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/Service01;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get Score is Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
