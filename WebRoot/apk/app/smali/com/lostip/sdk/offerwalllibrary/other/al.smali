.class Lcom/lostip/sdk/offerwalllibrary/other/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

.field private b:I

.field private c:I

.field private d:[Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public varargs constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/aj;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->d:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/other/al;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/other/al;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->b:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->c:I

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->c:I

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->f:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/aj;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    invoke-static {v0, p0}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Lcom/lostip/sdk/offerwalllibrary/other/al;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->b:I

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->a:Lcom/lostip/sdk/offerwalllibrary/other/aj;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/lostip/sdk/offerwalllibrary/other/al;->d:[Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/lostip/sdk/offerwalllibrary/other/aj;->a(Lcom/lostip/sdk/offerwalllibrary/other/aj;Ljava/lang/String;Lcom/lostip/sdk/offerwalllibrary/other/al;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
