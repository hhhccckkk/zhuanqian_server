.class Lcom/qidian/intwal/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/qidian/intwal/h;

.field private final synthetic b:Lcom/qidian/intwal/d;


# direct methods
.method constructor <init>(Lcom/qidian/intwal/h;Lcom/qidian/intwal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    iput-object p2, p0, Lcom/qidian/intwal/i;->b:Lcom/qidian/intwal/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "11"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qidian/intwal/i;->b:Lcom/qidian/intwal/d;

    invoke-virtual {v1}, Lcom/qidian/intwal/d;->b()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->j()V

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-static {v0}, Lcom/qidian/intwal/h;->a(Lcom/qidian/intwal/h;)Lcom/qidian/intwal/h;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qidian/intwal/h;->a(I)V

    const-string v0, "httpdown.saveDown__1234"

    invoke-static {v0}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->i()V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m_downSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-static {v2}, Lcom/qidian/intwal/h;->a(Lcom/qidian/intwal/h;)Lcom/qidian/intwal/h;

    move-result-object v2

    iget-wide v2, v2, Lcom/qidian/intwal/h;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qidian/intwal/q;->a(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5   HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-static {v0}, Lcom/qidian/intwal/h;->a(Lcom/qidian/intwal/h;)Lcom/qidian/intwal/h;

    move-result-object v0

    iget v0, v0, Lcom/qidian/intwal/h;->c:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-static {v0}, Lcom/qidian/intwal/h;->a(Lcom/qidian/intwal/h;)Lcom/qidian/intwal/h;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/qidian/intwal/h;->a(I)V

    iget-object v0, p0, Lcom/qidian/intwal/i;->a:Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->j()V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
