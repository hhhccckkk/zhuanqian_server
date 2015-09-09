.class public Lnet/midi/wall/sdk/AdDesc;
.super Ljava/lang/Object;


# instance fields
.field public adId:Ljava/lang/String;

.field public allTaskPoint:Ljava/lang/String;

.field public appAction:Ljava/lang/String;

.field public appImageUrls:[Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public appProvider:Ljava/lang/String;

.field public appSize:Ljava/lang/Integer;

.field public appVersion:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public earnStep:Ljava/lang/String;

.field public icon:Landroid/graphics/Bitmap;

.field public isTask:Z

.field public items:Ljava/util/List;

.field public points:Ljava/lang/Integer;

.field public status:I

.field public statusMemo:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/midi/wall/sdk/AdDesc;->adId:Ljava/lang/String;

    return-object v0
.end method
