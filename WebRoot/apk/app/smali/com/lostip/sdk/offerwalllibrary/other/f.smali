.class public abstract Lcom/lostip/sdk/offerwalllibrary/other/f;
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
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/bd;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/f;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/lostip/sdk/offerwalllibrary/other/b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/lostip/sdk/offerwalllibrary/other/b;",
            "Lcom/lostip/sdk/offerwalllibrary/other/e;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/lostip/sdk/offerwalllibrary/other/b;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
