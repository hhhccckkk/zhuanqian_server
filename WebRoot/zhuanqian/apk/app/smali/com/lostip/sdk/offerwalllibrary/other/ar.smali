.class final Lcom/lostip/sdk/offerwalllibrary/other/ar;
.super Ljava/io/RandomAccessFile;


# instance fields
.field final synthetic a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/lostip/sdk/offerwalllibrary/other/ao;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/lostip/sdk/offerwalllibrary/other/ar;->a:Lcom/lostip/sdk/offerwalllibrary/other/ao;

    const-string v0, "rw"

    invoke-direct {p0, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lostip/sdk/offerwalllibrary/other/ar;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ar;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/lostip/sdk/offerwalllibrary/other/ar;->b:Ljava/io/File;

    return-object v0
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
