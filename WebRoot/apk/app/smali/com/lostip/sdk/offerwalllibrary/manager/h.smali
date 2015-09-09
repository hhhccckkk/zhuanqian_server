.class Lcom/lostip/sdk/offerwalllibrary/manager/h;
.super Lcom/lostip/sdk/offerwalllibrary/manager/p;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/manager/g;


# direct methods
.method constructor <init>(Lcom/lostip/sdk/offerwalllibrary/manager/g;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/manager/h;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/manager/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/h;->a:Lcom/lostip/sdk/offerwalllibrary/manager/g;

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/aa;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/manager/g;->a(Lcom/lostip/sdk/offerwalllibrary/manager/g;I)V

    return-void
.end method
