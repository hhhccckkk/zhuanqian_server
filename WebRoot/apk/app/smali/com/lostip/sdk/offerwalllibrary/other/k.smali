.class Lcom/lostip/sdk/offerwalllibrary/other/k;
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
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/lostip/sdk/offerwalllibrary/other/a;

.field private d:Lcom/lostip/sdk/offerwalllibrary/other/b;

.field private e:Lcom/lostip/sdk/offerwalllibrary/other/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lostip/sdk/offerwalllibrary/other/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lostip/sdk/offerwalllibrary/other/a;",
            "Lcom/lostip/sdk/offerwalllibrary/other/f",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->b:I

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->c:Lcom/lostip/sdk/offerwalllibrary/other/a;

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->e:Lcom/lostip/sdk/offerwalllibrary/other/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;Lcom/lostip/sdk/offerwalllibrary/other/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lostip/sdk/offerwalllibrary/other/k;-><init>(Lcom/lostip/sdk/offerwalllibrary/other/a;Lcom/lostip/sdk/offerwalllibrary/other/f;)V

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/k;I)V
    .locals 0

    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->b:I

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/k;Lcom/lostip/sdk/offerwalllibrary/other/b;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->d:Lcom/lostip/sdk/offerwalllibrary/other/b;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->g:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/f;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->e:Lcom/lostip/sdk/offerwalllibrary/other/f;

    return-object v0
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/a;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->c:Lcom/lostip/sdk/offerwalllibrary/other/a;

    return-object v0
.end method

.method static synthetic d(Lcom/lostip/sdk/offerwalllibrary/other/k;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->b:I

    return v0
.end method

.method static synthetic e(Lcom/lostip/sdk/offerwalllibrary/other/k;)Lcom/lostip/sdk/offerwalllibrary/other/b;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->d:Lcom/lostip/sdk/offerwalllibrary/other/b;

    return-object v0
.end method

.method static synthetic f(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/lostip/sdk/offerwalllibrary/other/k;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/k;->f:Ljava/lang/Object;

    return-object v0
.end method
