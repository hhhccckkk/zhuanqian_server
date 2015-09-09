.class Lcom/qidian/intwal/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qidian/intwal/ScoreManagerCallBack;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/n;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/n;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/o;->a:Lcom/qidian/intwal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/o;->a:Lcom/qidian/intwal/n;

    iget v1, v0, Lcom/qidian/intwal/n;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/qidian/intwal/n;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first.req is fail.msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/o;->a:Lcom/qidian/intwal/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qidian/intwal/n;->j:Z

    iget-object v0, p0, Lcom/qidian/intwal/o;->a:Lcom/qidian/intwal/n;

    iget v1, v0, Lcom/qidian/intwal/n;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/qidian/intwal/n;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading.103.first.req.result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qidian/intwal/o;->a:Lcom/qidian/intwal/n;

    invoke-virtual {v0, p1}, Lcom/qidian/intwal/n;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
