.class public Lcom/lostip/sdk/offerwalllibrary/entity/a;
.super Lcom/lostip/sdk/offerwalllibrary/entity/c;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lostip/sdk/offerwalllibrary/entity/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionType:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "action_type"
    .end annotation
.end field

.field public adBillingMode:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_billing_mode"
    .end annotation
.end field

.field private adBitMapBytes:[B

.field private adBitMapSize:I

.field public adBitmap:Landroid/graphics/Bitmap;

.field public adTitle:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_title"
    .end annotation
.end field

.field public adToken:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_token"
    .end annotation
.end field

.field public adType:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_type"
    .end annotation
.end field

.field public adWords:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "ad_words"
    .end annotation
.end field

.field public appDescription:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_description"
    .end annotation
.end field

.field public appDeveloper:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_developer"
    .end annotation
.end field

.field public appDownloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_download_url"
    .end annotation
.end field

.field public appIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_icon_url"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_id"
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_name"
    .end annotation
.end field

.field public appPackageName:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_package_name"
    .end annotation
.end field

.field public appSize:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_size"
    .end annotation
.end field

.field public appVersion:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "app_version"
    .end annotation
.end field

.field public autoInstall:I

.field public completedCount:J

.field public displayDuration:J

.field public effectiveAdDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "effective_show_time"
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public isEditing:Z

.field public percentage:F

.field public pictureUrl:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "pic_url"
    .end annotation
.end field

.field public remainTime:J

.field public speed:F

.field public state:I

.field public targetUrl:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "target_url"
    .end annotation
.end field

.field public taskId:Ljava/lang/String;
    .annotation runtime Lcom/lostip/sdk/offerwalllibrary/other/bb;
        a = "task_id"
    .end annotation
.end field

.field public totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/b;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/b;-><init>()V

    sput-object v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/lostip/sdk/offerwalllibrary/entity/c;-><init>()V

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->effectiveAdDuration:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->actionType:Ljava/lang/Integer;

    iput v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->autoInstall:I

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)I
    .locals 1

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapSize:I

    return v0
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/entity/a;I)V
    .locals 0

    iput p1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapSize:I

    return-void
.end method

.method static synthetic a(Lcom/lostip/sdk/offerwalllibrary/entity/a;[B)V
    .locals 0

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapBytes:[B

    return-void
.end method

.method static synthetic b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)[B
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapBytes:[B

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    iget-object v1, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    iget-object v2, p1, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->effectiveAdDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->actionType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adWords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->targetUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->pictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDeveloper:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->autoInstall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBitMapBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
