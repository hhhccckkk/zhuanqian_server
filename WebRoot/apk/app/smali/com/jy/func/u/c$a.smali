.class final Lcom/jy/func/u/c$a;
.super Ljava/lang/Object;
.source "CYZ_Huffman.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jy/func/u/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field cG:C

.field cH:Lcom/jy/func/u/c$a;

.field cI:Lcom/jy/func/u/c$a;

.field private synthetic cJ:Lcom/jy/func/u/c;

.field weight:I


# direct methods
.method public constructor <init>(Lcom/jy/func/u/c;CILcom/jy/func/u/c$a;Lcom/jy/func/u/c$a;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "weight"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-char p2, p0, Lcom/jy/func/u/c$a;->cG:C

    .line 15
    iput p3, p0, Lcom/jy/func/u/c$a;->weight:I

    .line 16
    iput-object p4, p0, Lcom/jy/func/u/c$a;->cH:Lcom/jy/func/u/c$a;

    .line 17
    iput-object p5, p0, Lcom/jy/func/u/c$a;->cI:Lcom/jy/func/u/c$a;

    .line 18
    return-void
.end method

.method private b(Lcom/jy/func/u/c$a;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 28
    iget v0, p0, Lcom/jy/func/u/c$a;->weight:I

    iget v1, p1, Lcom/jy/func/u/c$a;->weight:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jy/func/u/c$a;

    iget v0, p0, Lcom/jy/func/u/c$a;->weight:I

    iget v1, p1, Lcom/jy/func/u/c$a;->weight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "ob"

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Lcom/jy/func/u/c$a;

    .line 23
    .local v0, o:Lcom/jy/func/u/c$a;
    iget-char v1, p0, Lcom/jy/func/u/c$a;->cG:C

    iget-char v2, v0, Lcom/jy/func/u/c$a;->cG:C

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLeaf()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jy/func/u/c$a;->cH:Lcom/jy/func/u/c$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/u/c$a;->cI:Lcom/jy/func/u/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
