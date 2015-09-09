.class Lcom/dlnetwork/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dlnetwork/GiveMoneyListener;


# instance fields
.field final synthetic a:Lcom/dlnetwork/d;

.field private final synthetic b:Lcom/dlnetwork/SetTotalMoneyListener;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dlnetwork/d;Lcom/dlnetwork/SetTotalMoneyListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/e;->a:Lcom/dlnetwork/d;

    iput-object p2, p0, Lcom/dlnetwork/e;->b:Lcom/dlnetwork/SetTotalMoneyListener;

    iput-object p3, p0, Lcom/dlnetwork/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public giveMoneyFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dlnetwork/e;->b:Lcom/dlnetwork/SetTotalMoneyListener;

    invoke-interface {v0, p1}, Lcom/dlnetwork/SetTotalMoneyListener;->setTotalMoneyFailed(Ljava/lang/String;)V

    return-void
.end method

.method public giveMoneySuccess(J)V
    .locals 2

    iget-object v0, p0, Lcom/dlnetwork/e;->b:Lcom/dlnetwork/SetTotalMoneyListener;

    iget-object v1, p0, Lcom/dlnetwork/e;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/dlnetwork/SetTotalMoneyListener;->setTotalMoneySuccessed(Ljava/lang/String;J)V

    return-void
.end method
