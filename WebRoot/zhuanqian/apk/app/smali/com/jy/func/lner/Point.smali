.class public Lcom/jy/func/lner/Point;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/lner/Point$PointStatus;
    }
.end annotation


# instance fields
.field public consumed:F

.field public point:F

.field public status:Lcom/jy/func/lner/Point$PointStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatus(I)Lcom/jy/func/lner/Point$PointStatus;
    .locals 1
    .parameter "paramInt"

    .prologue
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 18
    sget-object v0, Lcom/jy/func/lner/Point$PointStatus;->unknown_error:Lcom/jy/func/lner/Point$PointStatus;

    :goto_0
    return-object v0

    .line 12
    :pswitch_0
    sget-object v0, Lcom/jy/func/lner/Point$PointStatus;->consume_success:Lcom/jy/func/lner/Point$PointStatus;

    goto :goto_0

    .line 14
    :pswitch_1
    sget-object v0, Lcom/jy/func/lner/Point$PointStatus;->lack_point:Lcom/jy/func/lner/Point$PointStatus;

    goto :goto_0

    .line 16
    :pswitch_2
    sget-object v0, Lcom/jy/func/lner/Point$PointStatus;->repeat_order:Lcom/jy/func/lner/Point$PointStatus;

    goto :goto_0

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
