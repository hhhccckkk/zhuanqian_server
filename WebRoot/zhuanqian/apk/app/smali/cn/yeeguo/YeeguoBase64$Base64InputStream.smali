.class public Lcn/yeeguo/YeeguoBase64$Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "YeeguoBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yeeguo/YeeguoBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 654
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 658
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->breakLines:Z

    .line 659
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->encode:Z

    .line 660
    iget-boolean v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->bufferLength:I

    .line 661
    iget v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->buffer:[B

    .line 662
    const/4 v0, -0x1

    iput v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    .line 663
    iput v2, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->lineLength:I

    .line 664
    iput p2, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->options:I

    .line 666
    invoke-static {p2}, Lcn/yeeguo/YeeguoBase64;->getDecodabet(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->decodabet:[B

    .line 667
    return-void

    :cond_0
    move v0, v2

    .line 658
    goto :goto_0

    :cond_1
    move v1, v2

    .line 659
    goto :goto_1

    .line 660
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 670
    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    if-gez v3, :cond_0

    .line 671
    iget-boolean v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 672
    new-array v0, v4, [B

    .line 673
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 674
    .local v2, numBinaryBytes:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v4, :cond_1

    .line 689
    if-lez v2, :cond_3

    .line 690
    iget-object v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->buffer:[B

    iget v5, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcn/yeeguo/YeeguoBase64;->encode3to4([BII[BII)[B

    .line 691
    iput v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    .line 692
    iput v11, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->numSigBytes:I

    .line 725
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_0
    :goto_1
    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    if-ltz v3, :cond_e

    .line 726
    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    iget v4, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v10

    .line 742
    :goto_2
    return v1

    .line 676
    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v9       #i:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 678
    .local v6, b:I
    if-ltz v6, :cond_2

    .line 679
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    add-int/lit8 v2, v2, 0x1

    .line 674
    .end local v6           #b:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 682
    :catch_0
    move-exception v8

    .line 683
    .local v8, e:Ljava/io/IOException;
    if-nez v9, :cond_2

    .line 684
    throw v8

    .end local v8           #e:Ljava/io/IOException;
    :cond_3
    move v1, v10

    .line 694
    goto :goto_2

    .line 697
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_4
    new-array v7, v11, [B

    .line 698
    .local v7, b4:[B
    const/4 v9, 0x0

    .line 699
    .restart local v9       #i:I
    const/4 v9, 0x0

    :goto_3
    if-lt v9, v11, :cond_6

    .line 711
    :cond_5
    if-ne v9, v11, :cond_9

    .line 712
    iget-object v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->buffer:[B

    iget v4, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lcn/yeeguo/YeeguoBase64;->decode4to3([BI[BII)I

    move-result v3

    iput v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->numSigBytes:I

    .line 713
    iput v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    goto :goto_1

    .line 700
    :cond_6
    const/4 v6, 0x0

    .line 702
    .restart local v6       #b:I
    :cond_7
    iget-object v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 703
    if-ltz v6, :cond_8

    iget-object v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    .line 701
    if-le v3, v4, :cond_7

    .line 705
    :cond_8
    if-ltz v6, :cond_5

    .line 708
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 699
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 715
    .end local v6           #b:I
    :cond_9
    if-nez v9, :cond_a

    move v1, v10

    .line 716
    goto :goto_2

    .line 719
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    .end local v7           #b4:[B
    .end local v9           #i:I
    :cond_b
    iget-boolean v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 731
    iput v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->lineLength:I

    .line 732
    const/16 v1, 0xa

    goto :goto_2

    .line 735
    :cond_c
    iget v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->lineLength:I

    .line 737
    iget-object v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->buffer:[B

    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    aget-byte v6, v1, v3

    .line 739
    .restart local v6       #b:I
    iget v1, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    iget v3, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 740
    iput v10, p0, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->position:I

    .line 742
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 745
    .end local v6           #b:I
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_1

    .line 762
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 751
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcn/yeeguo/YeeguoBase64$Base64InputStream;->read()I

    move-result v0

    .line 752
    .local v0, b:I
    if-ltz v0, :cond_2

    .line 753
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_2
    if-nez v1, :cond_0

    .line 757
    const/4 v1, -0x1

    goto :goto_1
.end method
