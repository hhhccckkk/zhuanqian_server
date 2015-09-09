.class final Lcom/jy/func/w/d$c;
.super Lcom/jy/func/w/d$a;
.source "CYZBase64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static eP:I = 0x13

.field private static final eQ:[B

.field private static final eR:[B


# instance fields
.field private count:I

.field private final eS:[B

.field private eT:I

.field public final eU:Z

.field public final eV:Z

.field public final eW:Z

.field private final eX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 107
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jy/func/w/d$c;->eQ:[B

    .line 108
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jy/func/w/d$c;->eR:[B

    return-void

    .line 107
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 108
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .parameter "flags"
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Lcom/jy/func/w/d$a;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jy/func/w/d$c;->eI:[B

    .line 121
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jy/func/w/d$c;->eU:Z

    .line 122
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jy/func/w/d$c;->eV:Z

    .line 123
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/jy/func/w/d$c;->eW:Z

    .line 124
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/jy/func/w/d$c;->eQ:[B

    :goto_3
    iput-object v0, p0, Lcom/jy/func/w/d$c;->eX:[B

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jy/func/w/d$c;->eS:[B

    .line 127
    iput v2, p0, Lcom/jy/func/w/d$c;->eT:I

    .line 129
    iget-boolean v0, p0, Lcom/jy/func/w/d$c;->eV:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/jy/func/w/d$c;->count:I

    .line 130
    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1

    :cond_2
    move v1, v2

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    sget-object v0, Lcom/jy/func/w/d$c;->eR:[B

    goto :goto_3

    .line 129
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public final a([BIIZ)Z
    .locals 14
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "finish"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/jy/func/w/d$c;->eX:[B

    .line 140
    .local v1, alphabet:[B
    iget-object v5, p0, Lcom/jy/func/w/d$c;->eI:[B

    .line 141
    .local v5, output:[B
    const/4 v3, 0x0

    .line 142
    .local v3, op:I
    iget v2, p0, Lcom/jy/func/w/d$c;->count:I

    .line 144
    .local v2, count:I
    move/from16 v6, p2

    .line 145
    .local v6, p:I
    add-int p3, p3, p2

    .line 146
    const/4 v10, -0x1

    .line 148
    .local v10, v:I
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    packed-switch v11, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, -0x1

    if-eq v10, v11, :cond_13

    .line 169
    const/4 v11, 0x0

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v12, v10, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 170
    const/4 v11, 0x1

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 171
    const/4 v11, 0x2

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 172
    const/4 v11, 0x3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 173
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_13

    .line 174
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x4

    add-int/lit8 v3, v3, 0x1

    const/16 v12, 0xd

    aput-byte v12, v5, v11

    .line 175
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .local v4, op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 176
    const/16 v2, 0x13

    move v7, v6

    .line 181
    .end local v6           #p:I
    .local v7, p:I
    :goto_1
    add-int/lit8 v11, v7, 0x3

    move/from16 v0, p3

    if-le v11, v0, :cond_5

    .line 197
    if-eqz p4, :cond_e

    .line 199
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x1

    if-ne v11, v12, :cond_8

    .line 200
    const/4 v8, 0x0

    .line 201
    .local v8, t:I
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    if-lez v11, :cond_7

    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    const/4 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    aget-byte v11, v11, v12

    :goto_2
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x4

    .line 202
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/jy/func/w/d$c;->eT:I

    .line 203
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 204
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 205
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eU:Z

    if-eqz v11, :cond_2

    .line 206
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v4

    .line 207
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    :cond_2
    move v3, v4

    .line 209
    .end local v4           #op:I
    .restart local v3       #op:I
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eV:Z

    if-eqz v11, :cond_12

    .line 210
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v11, :cond_3

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 211
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .line 241
    .end local v4           #op:I
    .end local v8           #t:I
    .restart local v3       #op:I
    :cond_4
    :goto_3
    iput v3, p0, Lcom/jy/func/w/d$c;->eJ:I

    .line 242
    iput v2, p0, Lcom/jy/func/w/d$c;->count:I

    .line 244
    const/4 v11, 0x1

    return v11

    .line 153
    :pswitch_1
    add-int/lit8 v11, v6, 0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 155
    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v7, v6, 0x1

    .end local v6           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v6, v7, 0x1

    .end local v7           #p:I
    .restart local v6       #p:I
    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 157
    const/4 v11, 0x0

    iput v11, p0, Lcom/jy/func/w/d$c;->eT:I

    goto/16 :goto_0

    .line 159
    :pswitch_2
    add-int/lit8 v11, v6, 0x1

    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 161
    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, p0, Lcom/jy/func/w/d$c;->eS:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v7, v6, 0x1

    .end local v6           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 163
    const/4 v11, 0x0

    iput v11, p0, Lcom/jy/func/w/d$c;->eT:I

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    goto/16 :goto_0

    .line 182
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_5
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 184
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 185
    add-int/lit8 v11, v4, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 186
    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 187
    add-int/lit8 v11, v4, 0x3

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 188
    add-int/lit8 v6, v7, 0x3

    .line 189
    .end local v7           #p:I
    .restart local v6       #p:I
    add-int/lit8 v3, v4, 0x4

    .line 190
    .end local v4           #op:I
    .restart local v3       #op:I
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_13

    .line 191
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v11, :cond_6

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 192
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 193
    const/16 v2, 0x13

    move v7, v6

    .end local v6           #p:I
    .restart local v7       #p:I
    goto/16 :goto_1

    .line 201
    .restart local v8       #t:I
    :cond_7
    aget-byte v11, p1, v7

    goto/16 :goto_2

    .line 213
    .end local v8           #t:I
    :cond_8
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x2

    if-ne v11, v12, :cond_d

    .line 214
    const/4 v8, 0x0

    .line 215
    .restart local v8       #t:I
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    const/4 v12, 0x0

    add-int/lit8 v8, v8, 0x1

    aget-byte v11, v11, v12

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    :goto_4
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0xa

    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    if-lez v11, :cond_c

    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #t:I
    .local v9, t:I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9           #t:I
    .restart local v8       #t:I
    :goto_5
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x2

    or-int v10, v12, v11

    .line 217
    iget v11, p0, Lcom/jy/func/w/d$c;->eT:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/jy/func/w/d$c;->eT:I

    .line 218
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 219
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 220
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 221
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eU:Z

    if-eqz v11, :cond_9

    .line 222
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    .line 224
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_9
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eV:Z

    if-eqz v11, :cond_4

    .line 225
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v11, :cond_a

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 226
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_a
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v3, v4

    .line 228
    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .line 215
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_b
    add-int/lit8 v6, v7, 0x1

    .end local v7           #p:I
    .restart local v6       #p:I
    aget-byte v11, p1, v7

    goto :goto_4

    :cond_c
    aget-byte v11, p1, v6

    goto :goto_5

    .line 228
    .end local v6           #p:I
    .end local v8           #t:I
    .restart local v7       #p:I
    :cond_d
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eV:Z

    if-eqz v11, :cond_10

    if-lez v4, :cond_10

    const/16 v11, 0x13

    if-eq v2, v11, :cond_10

    .line 229
    iget-boolean v11, p0, Lcom/jy/func/w/d$c;->eW:Z

    if-eqz v11, :cond_11

    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v4

    .line 230
    :goto_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .line 233
    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .line 234
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_e
    add-int/lit8 v11, p3, -0x1

    if-ne v7, v11, :cond_f

    .line 235
    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    iget v12, p0, Lcom/jy/func/w/d$c;->eT:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/jy/func/w/d$c;->eT:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .line 236
    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_f
    add-int/lit8 v11, p3, -0x2

    if-ne v7, v11, :cond_10

    .line 237
    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    iget v12, p0, Lcom/jy/func/w/d$c;->eT:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/jy/func/w/d$c;->eT:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    .line 238
    iget-object v11, p0, Lcom/jy/func/w/d$c;->eS:[B

    iget v12, p0, Lcom/jy/func/w/d$c;->eT:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/jy/func/w/d$c;->eT:I

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    :cond_10
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_11
    move v3, v4

    .end local v4           #op:I
    .restart local v3       #op:I
    goto :goto_6

    .restart local v8       #t:I
    :cond_12
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    goto/16 :goto_3

    .end local v8           #t:I
    :cond_13
    move v7, v6

    .end local v6           #p:I
    .restart local v7       #p:I
    move v4, v3

    .end local v3           #op:I
    .restart local v4       #op:I
    goto/16 :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final n(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 134
    shl-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method
