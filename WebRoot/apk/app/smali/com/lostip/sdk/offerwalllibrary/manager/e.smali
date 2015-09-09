.class Lcom/lostip/sdk/offerwalllibrary/manager/e;
.super Lcom/lostip/sdk/offerwalllibrary/manager/p;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/d;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/e;->a:Lcom/lostip/sdk/offerwalllibrary/manager/d;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/e;->a:Lcom/lostip/sdk/offerwalllibrary/manager/d;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/d;->c()V

    :cond_0
    return-void
.end method
