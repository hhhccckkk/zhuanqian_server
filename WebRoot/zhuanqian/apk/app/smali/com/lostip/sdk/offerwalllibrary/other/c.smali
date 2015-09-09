.class public abstract Lcom/lostip/sdk/offerwalllibrary/other/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/lostip/sdk/offerwalllibrary/other/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/other/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/lostip/sdk/offerwalllibrary/other/a;
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/other/f",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/c;->a:Lcom/lostip/sdk/offerwalllibrary/other/f;

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/lostip/sdk/offerwalllibrary/other/c;->a()Lcom/lostip/sdk/offerwalllibrary/other/a;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/c;->a:Lcom/lostip/sdk/offerwalllibrary/other/f;

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/other/j;->a(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;)Ljava/lang/String;

    return-void
.end method
