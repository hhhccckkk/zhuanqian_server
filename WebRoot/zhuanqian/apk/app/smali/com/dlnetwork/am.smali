.class Lcom/dlnetwork/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dlnetwork/af;


# direct methods
.method constructor <init>(Lcom/dlnetwork/af;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/am;->a:Lcom/dlnetwork/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dlnetwork/am;->a:Lcom/dlnetwork/af;

    invoke-static {v0}, Lcom/dlnetwork/af;->c(Lcom/dlnetwork/af;)Lcom/dlnetwork/GiveMoneyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dlnetwork/am;->a:Lcom/dlnetwork/af;

    invoke-static {v1}, Lcom/dlnetwork/af;->e(Lcom/dlnetwork/af;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/dlnetwork/GiveMoneyListener;->giveMoneySuccess(J)V

    return-void
.end method
