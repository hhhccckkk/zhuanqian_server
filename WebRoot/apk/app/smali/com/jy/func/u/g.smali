.class public abstract Lcom/jy/func/u/g;
.super Ljava/lang/Object;
.source "CYZ_UrlMain.java"


# instance fields
.field private bS:Lcom/jy/func/t/c;

.field private cN:Ljava/lang/String;

.field private cO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "110100001101:1110100011101:111010001:111000001:111010001110:10111100:10111100:11101110111:111011101:1110111011101:10111000101:110101001:1101001:1101111011011:110111001:110011101100:1111001011110:110111101:11101010111:10111000:110111001:110010101100:1110100011101:10111100:111001101:1100100011001:110101101:"

    iput-object v0, p0, Lcom/jy/func/u/g;->cN:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/jy/func/u/g;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    .line 21
    invoke-static {}, Lcom/jy/func/u/r$a;->cB()Lcom/jy/func/u/r;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/u/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jy/func/u/r;->g(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/u/g;->cO:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jy/func/u/g;->cO:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/jy/func/u/r;->cy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jy/func/u/r;->cz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private cd()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/jy/func/u/r$a;->cB()Lcom/jy/func/u/r;

    move-result-object v0

    .line 35
    .local v0, aa:Lcom/jy/func/u/r;
    iget-object v1, p0, Lcom/jy/func/u/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jy/func/u/r;->g(Landroid/content/Context;)V

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/u/g;->cO:Ljava/util/HashMap;

    .line 37
    iget-object v1, p0, Lcom/jy/func/u/g;->cO:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/jy/func/u/r;->cy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jy/func/u/r;->cz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs abstract a(Ljava/util/HashMap;[Ljava/lang/Object;)Lcom/jy/func/w/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/jy/func/w/m;"
        }
    .end annotation
.end method

.method public final varargs a([Ljava/lang/Object;)Lcom/jy/func/w/m;
    .locals 1
    .parameter "args"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jy/func/u/g;->cO:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/jy/func/u/g;->a(Ljava/util/HashMap;[Ljava/lang/Object;)Lcom/jy/func/w/m;

    move-result-object v0

    return-object v0
.end method

.method public final cc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jy/func/u/g;->cN:Ljava/lang/String;

    iget-object v1, p0, Lcom/jy/func/u/g;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jy/func/u/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
