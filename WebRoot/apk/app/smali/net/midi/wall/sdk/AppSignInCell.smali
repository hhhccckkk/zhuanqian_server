.class public Lnet/midi/wall/sdk/AppSignInCell;
.super Ljava/lang/Object;


# instance fields
.field public adId:Ljava/lang/String;

.field public icon:Landroid/graphics/Bitmap;

.field public points:Ljava/lang/Integer;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/AppSignInCell;->adId:Ljava/lang/String;

    return-object v0
.end method
