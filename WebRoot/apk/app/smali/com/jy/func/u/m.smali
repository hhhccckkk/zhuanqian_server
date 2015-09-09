.class public final Lcom/jy/func/u/m;
.super Lcom/jy/func/u/g;
.source "JYDetailPageURL.java"

# interfaces
.implements Lcom/jy/func/u/b;
.implements Lcom/jy/func/u/f;


# instance fields
.field private cP:Lcom/jy/func/u/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/jy/func/u/g;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/jy/func/u/e;

    invoke-direct {v0}, Lcom/jy/func/u/e;-><init>()V

    iput-object v0, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    .line 21
    invoke-virtual {p0}, Lcom/jy/func/u/m;->cb()Lcom/jy/func/u/e;

    .line 22
    return-void
.end method


# virtual methods
.method protected final varargs a(Ljava/util/HashMap;[Ljava/lang/Object;)Lcom/jy/func/w/m;
    .locals 12
    .parameter
    .parameter "args"
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

    .prologue
    .local p1, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 63
    invoke-static {}, Lcom/jy/func/u/r$a;->cB()Lcom/jy/func/u/r;

    move-result-object v0

    .line 64
    .local v0, aa:Lcom/jy/func/u/r;
    new-instance v2, Lcom/jy/func/w/m;

    invoke-direct {v2, p1}, Lcom/jy/func/w/m;-><init>(Ljava/util/Map;)V

    .line 65
    .local v2, params:Lcom/jy/func/w/m;
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    const-string v10, "0x111122"

    invoke-static {v9, v10}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, sUD:Ljava/lang/String;
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    const-string v10, "0x111123"

    invoke-static {v9, v10}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, sAD:Ljava/lang/String;
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    const-string v10, "0x111124"

    invoke-static {v9, v10}, Lcom/jy/func/t/f;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, sAK:Ljava/lang/String;
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jy/func/t/c;->bC()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, sDK:Ljava/lang/String;
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jy/func/t/c;->bp()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, sPN:Ljava/lang/String;
    const-string v9, "3"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 71
    const-string v6, "97238fe15bbca4"

    .line 72
    const-string v5, "608756226607880"

    .line 76
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v8, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0}, Lcom/jy/func/u/r;->ch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Lcom/jy/func/u/r;->ci()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cj()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    aget-object v9, p2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0}, Lcom/jy/func/u/r;->ck()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v0}, Lcom/jy/func/u/r;->ct()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    aget-object v9, p2, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v9, p0, Lcom/jy/func/u/m;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/jy/func/t/c;->d(Landroid/content/Context;)Lcom/jy/func/t/c;

    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-static {v9}, Lcom/jy/func/t/c;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cu()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/jy/func/u/r;->cv()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v2, v9, v10}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-object v2
.end method

.method public final bV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/jy/func/u/m;->cc()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    invoke-virtual {v1}, Lcom/jy/func/u/e;->bX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jy/func/u/i;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bY()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    new-instance v1, Lcom/jy/func/u/v;

    invoke-direct {v1}, Lcom/jy/func/u/v;-><init>()V

    iput-object v1, v0, Lcom/jy/func/u/e;->cK:Lcom/jy/func/u/h;

    .line 36
    return-void
.end method

.method public final bZ()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    new-instance v1, Lcom/jy/func/u/A;

    invoke-direct {v1}, Lcom/jy/func/u/A;-><init>()V

    iput-object v1, v0, Lcom/jy/func/u/e;->cL:Lcom/jy/func/u/k;

    .line 42
    return-void
.end method

.method public final ca()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    new-instance v1, Lcom/jy/func/u/F;

    invoke-direct {v1}, Lcom/jy/func/u/F;-><init>()V

    iput-object v1, v0, Lcom/jy/func/u/e;->cM:Lcom/jy/func/u/j;

    .line 48
    return-void
.end method

.method public final cb()Lcom/jy/func/u/e;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/jy/func/u/m;->bY()V

    .line 54
    invoke-virtual {p0}, Lcom/jy/func/u/m;->bZ()V

    .line 55
    invoke-virtual {p0}, Lcom/jy/func/u/m;->ca()V

    .line 56
    iget-object v0, p0, Lcom/jy/func/u/m;->cP:Lcom/jy/func/u/e;

    return-object v0
.end method
