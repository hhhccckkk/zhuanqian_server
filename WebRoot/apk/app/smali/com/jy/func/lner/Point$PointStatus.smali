.class public final enum Lcom/jy/func/lner/Point$PointStatus;
.super Ljava/lang/Enum;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/lner/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PointStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jy/func/lner/Point$PointStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/jy/func/lner/Point$PointStatus;

.field public static final enum consume_success:Lcom/jy/func/lner/Point$PointStatus;

.field public static final enum lack_point:Lcom/jy/func/lner/Point$PointStatus;

.field public static final enum repeat_order:Lcom/jy/func/lner/Point$PointStatus;

.field public static final enum unknown_error:Lcom/jy/func/lner/Point$PointStatus;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 23
    new-instance v0, Lcom/jy/func/lner/Point$PointStatus;

    const-string v1, "consume_success"

    const-string v2, "\u6210\u529f"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/jy/func/lner/Point$PointStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/jy/func/lner/Point$PointStatus;->consume_success:Lcom/jy/func/lner/Point$PointStatus;

    new-instance v0, Lcom/jy/func/lner/Point$PointStatus;

    const-string v1, "lack_point"

    const-string v2, "\u5931\u8d25"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/jy/func/lner/Point$PointStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/jy/func/lner/Point$PointStatus;->lack_point:Lcom/jy/func/lner/Point$PointStatus;

    new-instance v0, Lcom/jy/func/lner/Point$PointStatus;

    const-string v1, "repeat_order"

    const-string v2, "\u6d4b\u8bd5"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/jy/func/lner/Point$PointStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/jy/func/lner/Point$PointStatus;->repeat_order:Lcom/jy/func/lner/Point$PointStatus;

    new-instance v0, Lcom/jy/func/lner/Point$PointStatus;

    const-string v1, "unknown_error"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/jy/func/lner/Point$PointStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/jy/func/lner/Point$PointStatus;->unknown_error:Lcom/jy/func/lner/Point$PointStatus;

    .line 21
    new-array v0, v7, [Lcom/jy/func/lner/Point$PointStatus;

    sget-object v1, Lcom/jy/func/lner/Point$PointStatus;->consume_success:Lcom/jy/func/lner/Point$PointStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jy/func/lner/Point$PointStatus;->lack_point:Lcom/jy/func/lner/Point$PointStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jy/func/lner/Point$PointStatus;->repeat_order:Lcom/jy/func/lner/Point$PointStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jy/func/lner/Point$PointStatus;->unknown_error:Lcom/jy/func/lner/Point$PointStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jy/func/lner/Point$PointStatus;->ENUM$VALUES:[Lcom/jy/func/lner/Point$PointStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "desc"
    .parameter "code"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/jy/func/lner/Point$PointStatus;->desc:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/jy/func/lner/Point$PointStatus;->code:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jy/func/lner/Point$PointStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jy/func/lner/Point$PointStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jy/func/lner/Point$PointStatus;

    return-object v0
.end method

.method public static values()[Lcom/jy/func/lner/Point$PointStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jy/func/lner/Point$PointStatus;->ENUM$VALUES:[Lcom/jy/func/lner/Point$PointStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/jy/func/lner/Point$PointStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/jy/func/lner/Point$PointStatus;->code:I

    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jy/func/lner/Point$PointStatus;->desc:Ljava/lang/String;

    return-object v0
.end method
