.class Lcom/lostip/sdk/offerwalllibrary/entity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lostip/sdk/offerwalllibrary/entity/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/lostip/sdk/offerwalllibrary/entity/a;
    .locals 2

    new-instance v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;

    invoke-direct {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/a;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->taskId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->effectiveAdDuration:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adBillingMode:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->actionType:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->adWords:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->targetUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->pictureUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->appDeveloper:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lostip/sdk/offerwalllibrary/entity/a;->autoInstall:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;I)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;)I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->a(Lcom/lostip/sdk/offerwalllibrary/entity/a;[B)V

    invoke-static {v0}, Lcom/lostip/sdk/offerwalllibrary/entity/a;->b(Lcom/lostip/sdk/offerwalllibrary/entity/a;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(I)[Lcom/lostip/sdk/offerwalllibrary/entity/a;
    .locals 1

    new-array v0, p1, [Lcom/lostip/sdk/offerwalllibrary/entity/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/entity/b;->a(Landroid/os/Parcel;)Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lostip/sdk/offerwalllibrary/entity/b;->a(I)[Lcom/lostip/sdk/offerwalllibrary/entity/a;

    move-result-object v0

    return-object v0
.end method
