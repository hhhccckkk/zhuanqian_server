.class Lcn/guomob/android/intwal/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/guomob/android/intwal/q;

.field private final synthetic b:Lcn/guomob/android/intwal/e;


# direct methods
.method constructor <init>(Lcn/guomob/android/intwal/q;Lcn/guomob/android/intwal/e;)V
    .locals 0

    iput-object p1, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    iput-object p2, p0, Lcn/guomob/android/intwal/r;->b:Lcn/guomob/android/intwal/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "11"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/guomob/android/intwal/r;->b:Lcn/guomob/android/intwal/e;

    invoke-virtual {v1}, Lcn/guomob/android/intwal/e;->b()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_3

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->h()V

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->a(Lcn/guomob/android/intwal/q;)Lcn/guomob/android/intwal/q;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/guomob/android/intwal/q;->a(I)V

    sget-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->b(Lcn/guomob/android/intwal/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ".downName.txt"

    const-string v2, "HttpDown.496"

    invoke-static {v0, v1, v2}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->b(Lcn/guomob/android/intwal/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ".downName.txt"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    iget-object v3, v3, Lcn/guomob/android/intwal/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/guomob/android/intwal/GMUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpDown.502"

    invoke-static {v0, v1, v2, v3}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->b(Lcn/guomob/android/intwal/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ".downName.txt"

    const-string v2, "Httpdown.430"

    invoke-static {v0, v1, v2}, Lcn/guomob/android/intwal/GMUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/guomob/android/intwal/GMUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/guomob/android/intwal/GMUtils;->c:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
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

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->a(Lcn/guomob/android/intwal/q;)Lcn/guomob/android/intwal/q;

    move-result-object v0

    iget v0, v0, Lcn/guomob/android/intwal/q;->c:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-static {v0}, Lcn/guomob/android/intwal/q;->a(Lcn/guomob/android/intwal/q;)Lcn/guomob/android/intwal/q;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/guomob/android/intwal/q;->a(I)V

    iget-object v0, p0, Lcn/guomob/android/intwal/r;->a:Lcn/guomob/android/intwal/q;

    invoke-virtual {v0}, Lcn/guomob/android/intwal/q;->h()V

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Guomob"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpDown.425="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method
