.class public Lcom/lostip/sdk/offerwalllibrary/manager/q;
.super Lcom/lostip/sdk/offerwalllibrary/other/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lostip/sdk/offerwalllibrary/other/f",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/d;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/lostip/sdk/offerwalllibrary/manager/q;


# instance fields
.field private c:Lcom/lostip/sdk/offerwalllibrary/other/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/other/f;-><init>()V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/other/h;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/other/h;-><init>()V

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->c:Lcom/lostip/sdk/offerwalllibrary/other/h;

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->c:Lcom/lostip/sdk/offerwalllibrary/other/h;

    invoke-virtual {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/h;->a(Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    return-void
.end method

.method public static a()Lcom/lostip/sdk/offerwalllibrary/manager/q;
    .locals 1

    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->b:Lcom/lostip/sdk/offerwalllibrary/manager/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/manager/q;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/manager/q;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->b:Lcom/lostip/sdk/offerwalllibrary/manager/q;

    :cond_0
    sget-object v0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->b:Lcom/lostip/sdk/offerwalllibrary/manager/q;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/d;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/entity/d;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/other/f;->a(Lcom/lostip/sdk/offerwalllibrary/other/a;)V

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/d;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/d;-><init>()V

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a()Lcom/lostip/sdk/offerwalllibrary/manager/a;

    move-result-object v1

    invoke-static {}, Lcom/lostip/sdk/offerwalllibrary/other/s;->a()Lcom/lostip/sdk/offerwalllibrary/other/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostip/sdk/offerwalllibrary/other/s;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostip/sdk/offerwalllibrary/manager/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/d;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/lostip/sdk/offerwalllibrary/other/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/q;->a(Lcom/lostip/sdk/offerwalllibrary/entity/d;Lcom/lostip/sdk/offerwalllibrary/other/b;Lcom/lostip/sdk/offerwalllibrary/other/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lostip/sdk/offerwalllibrary/manager/q;->a(Lcom/lostip/sdk/offerwalllibrary/entity/d;Lcom/lostip/sdk/offerwalllibrary/other/b;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/manager/q;->c:Lcom/lostip/sdk/offerwalllibrary/other/h;

    invoke-virtual {v0}, Lcom/lostip/sdk/offerwalllibrary/other/h;->b()V

    return-void
.end method
