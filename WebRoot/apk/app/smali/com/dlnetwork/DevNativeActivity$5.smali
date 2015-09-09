.class Lcom/dlnetwork/DevNativeActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dlnetwork/GetTotalMoneyListener;


# instance fields
.field final synthetic a:Lcom/dlnetwork/DevNativeActivity;


# direct methods
.method constructor <init>(Lcom/dlnetwork/DevNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dlnetwork/DevNativeActivity$5;->a:Lcom/dlnetwork/DevNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalMoneyFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getTotalMoneySuccessed(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dlnetwork/DevNativeActivity$5;->a:Lcom/dlnetwork/DevNativeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dlnetwork/DevNativeActivity;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/dlnetwork/DevNativeActivity$5;->a:Lcom/dlnetwork/DevNativeActivity;

    iput-object p1, v0, Lcom/dlnetwork/DevNativeActivity;->b:Ljava/lang/String;

    return-void
.end method
