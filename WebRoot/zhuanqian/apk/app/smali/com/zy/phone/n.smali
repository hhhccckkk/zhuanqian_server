.class final Lcom/zy/phone/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zy/phone/l;


# direct methods
.method constructor <init>(Lcom/zy/phone/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zy/phone/n;->a:Lcom/zy/phone/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/zy/phone/SDKInit;->access$0()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zy/phone/n;->a:Lcom/zy/phone/l;

    iget-object v0, v0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    const-string v1, "0"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/zy/phone/net/Integral;->retCheckIntegral(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zy/phone/SDKInit;->access$0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zy/phone/n;->a:Lcom/zy/phone/l;

    iget-object v0, v0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    const-string v1, "0"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/zy/phone/net/Integral;->retMinusIntegral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zy/phone/SDKInit;->access$0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zy/phone/n;->a:Lcom/zy/phone/l;

    iget-object v0, v0, Lcom/zy/phone/l;->a:Lcom/zy/phone/net/Integral;

    const-string v1, "0"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/zy/phone/net/Integral;->retAddIntegral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
