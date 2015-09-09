.class public Lcom/qidian/intwal/ScoreAdMsg;
.super Ljava/lang/Object;


# instance fields
.field a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    aget-object v3, v1, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFive()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/qidian/intwal/ScoreAdMsg;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method
