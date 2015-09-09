.class final Lcom/zy/phone/l;
.super Ljava/lang/Thread;


# instance fields
.field a:Lcom/zy/phone/net/Integral;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zy/phone/net/Integral;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    return-void
.end method

.method constructor <init>(Lcom/zy/phone/net/Integral;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    iput-object p2, p0, Lcom/zy/phone/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    iget-object v0, p0, Lcom/zy/phone/l;->b:Ljava/lang/String;

    invoke-static {}, Lcom/zy/phone/SDKInit;->access$0()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zy/phone/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Param"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Integral"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zy/phone/SDKInit;->access$1()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/zy/phone/m;

    invoke-direct {v3, p0, v1}, Lcom/zy/phone/m;-><init>(Lcom/zy/phone/l;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v1, "409"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zy/phone/SDKInit;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zy/phone/n;

    invoke-direct {v1, p0}, Lcom/zy/phone/n;-><init>(Lcom/zy/phone/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zy/phone/SDKInit;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zy/phone/o;

    invoke-direct {v1, p0}, Lcom/zy/phone/o;-><init>(Lcom/zy/phone/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
