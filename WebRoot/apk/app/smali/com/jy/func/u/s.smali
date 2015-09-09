.class public final Lcom/jy/func/u/s;
.super Ljava/lang/Object;
.source "ParaUtils.java"


# static fields
.field private static final dn:Ljava/lang/String; = "#"

.field private static final do:Ljava/lang/String; = "|"

.field private static final dp:Ljava/lang/String; = "="

.field private static final dq:[C

.field private static final dr:[C

.field private static final ds:[C

.field private static final dt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 20
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jy/func/u/s;->dq:[C

    .line 23
    new-array v1, v4, [C

    sput-object v1, Lcom/jy/func/u/s;->dr:[C

    .line 24
    new-array v1, v4, [C

    sput-object v1, Lcom/jy/func/u/s;->ds:[C

    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 161
    const/16 v1, 0x67

    new-array v1, v1, [B

    sput-object v1, Lcom/jy/func/u/s;->dt:[B

    .line 163
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 166
    const/4 v0, 0x0

    .local v0, i:B
    :goto_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 169
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 173
    return-void

    .line 27
    .local v0, i:I
    :cond_0
    sget-object v1, Lcom/jy/func/u/s;->dr:[C

    sget-object v2, Lcom/jy/func/u/s;->dq:[C

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 28
    sget-object v1, Lcom/jy/func/u/s;->ds:[C

    sget-object v2, Lcom/jy/func/u/s;->dq:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lcom/jy/func/u/s;->dt:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .local v0, i:B
    :cond_2
    sget-object v1, Lcom/jy/func/u/s;->dt:[B

    add-int/lit8 v2, v0, 0x30

    aput-byte v0, v1, v2

    .line 166
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_2

    .line 170
    :cond_3
    sget-object v1, Lcom/jy/func/u/s;->dt:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 171
    sget-object v1, Lcom/jy/func/u/s;->dt:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 169
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_3

    .line 20
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static K(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .parameter "mapText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 105
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    :cond_0
    const/4 v3, 0x0

    .line 129
    :cond_1
    return-object v3

    .line 108
    :cond_2
    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "\\|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 112
    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v10, v8, v6

    .line 113
    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, keyText:[Ljava/lang/String;
    array-length v10, v1

    if-gtz v10, :cond_3

    .line 112
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    :cond_3
    aget-object v0, v1, v7

    .line 118
    .local v0, key:Ljava/lang/String;
    aget-object v5, v1, v12

    .line 119
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x4d

    if-ne v10, v11, :cond_4

    .line 120
    invoke-static {v5}, Lcom/jy/func/u/s;->K(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 121
    .local v4, map1:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 122
    .end local v4           #map1:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_5

    .line 123
    invoke-static {v5}, Lcom/jy/func/u/s;->L(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_5
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static L(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "listText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 140
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 158
    :cond_1
    return-object v0

    .line 143
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v3, v6, v4

    .line 148
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_3

    .line 149
    invoke-static {v3}, Lcom/jy/func/u/s;->K(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 150
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_4

    .line 152
    invoke-static {v3}, Lcom/jy/func/u/s;->L(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, lists:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    .end local v1           #lists:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static M(Ljava/lang/String;)[B
    .locals 13
    .parameter "hexString"

    .prologue
    const/16 v12, 0x66

    const/4 v11, -0x1

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 181
    .local v8, length:I
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_0

    .line 182
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Odd number of characters."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, badHex:Z
    shr-int/lit8 v10, v8, 0x1

    new-array v9, v10, [B

    .line 187
    .local v9, out:[B
    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    :goto_0
    if-lt v7, v8, :cond_1

    move v6, v7

    .line 215
    .end local v7           #j:I
    .restart local v6       #j:I
    :goto_1
    if-eqz v0, :cond_6

    .line 216
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid hexadecimal digit: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 188
    .end local v6           #j:I
    .restart local v7       #j:I
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 189
    .local v1, c1:I
    if-le v1, v12, :cond_2

    .line 190
    const/4 v0, 0x1

    .line 191
    goto :goto_1

    .line 194
    :cond_2
    sget-object v10, Lcom/jy/func/u/s;->dt:[B

    aget-byte v3, v10, v1

    .line 195
    .local v3, d1:B
    if-ne v3, v11, :cond_3

    .line 196
    const/4 v0, 0x1

    .line 197
    goto :goto_1

    .line 200
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 201
    .local v2, c2:I
    if-le v2, v12, :cond_4

    .line 202
    const/4 v0, 0x1

    move v6, v7

    .line 203
    .end local v7           #j:I
    .restart local v6       #j:I
    goto :goto_1

    .line 206
    .end local v6           #j:I
    .restart local v7       #j:I
    :cond_4
    sget-object v10, Lcom/jy/func/u/s;->dt:[B

    aget-byte v4, v10, v2

    .line 207
    .local v4, d2:B
    if-ne v4, v11, :cond_5

    .line 208
    const/4 v0, 0x1

    move v6, v7

    .line 209
    .end local v7           #j:I
    .restart local v6       #j:I
    goto :goto_1

    .line 212
    .end local v6           #j:I
    .restart local v7       #j:I
    :cond_5
    shl-int/lit8 v10, v3, 0x4

    or-int/2addr v10, v4

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    .end local v1           #c1:I
    .end local v2           #c2:I
    .end local v3           #d1:B
    .end local v4           #d2:B
    .end local v7           #j:I
    .restart local v6       #j:I
    :cond_6
    return-object v9
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 59
    .end local v0           #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 43
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_2

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/jy/func/u/s;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 51
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/jy/func/u/s;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 54
    :cond_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 55
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "M"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 72
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 74
    move-object v0, v1

    .line 77
    .local v0, key:Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, value:Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v3, Ljava/util/List;

    .end local v3           #value:Ljava/lang/Object;
    invoke-static {v3}, Lcom/jy/func/u/s;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 81
    .restart local v3       #value:Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    check-cast v3, Ljava/util/Map;

    .end local v3           #value:Ljava/lang/Object;
    invoke-static {v3}, Lcom/jy/func/u/s;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 86
    .restart local v3       #value:Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p0}, Lcom/jy/func/t/f;->e(Landroid/content/Context;)Lcom/jy/func/t/f;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 233
    .local v3, cla:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v0, v4

    .line 234
    .local v0, a1:I
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v1, v4

    .line 237
    .local v1, a2:I
    new-instance v4, Lcom/jy/func/u/a;

    invoke-direct {v4, v0, v1}, Lcom/jy/func/u/a;-><init>(II)V

    invoke-virtual {v4}, Lcom/jy/func/u/a;->bU()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, aa:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/jy/func/u/s;->M(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/jy/func/u/s;->K(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4
.end method
