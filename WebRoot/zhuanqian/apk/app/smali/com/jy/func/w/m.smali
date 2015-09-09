.class public final Lcom/jy/func/w/m;
.super Ljava/lang/Object;
.source "CYZRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jy/func/w/m$a;,
        Lcom/jy/func/w/m$b;
    }
.end annotation


# static fields
.field private static dL:Ljava/lang/String; = "RequestParams"

.field private static fC:Ljava/lang/String; = "application/octet-stream"

.field private static fD:Ljava/lang/String; = "application/json"


# instance fields
.field private fE:Z

.field private fF:Z

.field private fG:Z

.field private fH:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fI:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jy/func/w/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private fJ:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jy/func/w/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private fK:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jy/func/w/m;-><init>(Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/jy/func/w/m$1;

    invoke-direct {v0}, Lcom/jy/func/w/m$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/jy/func/w/m;-><init>(Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .parameter "keysAndValues"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    .line 75
    array-length v2, p1

    .line 76
    .local v2, len:I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 77
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Supplied arguments must be even"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 83
    return-void

    .line 79
    :cond_1
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, val:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter "key"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/jy/func/w/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/jy/func/w/m$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "file"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/jy/func/w/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/jy/func/w/m$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .parameter "key"
    .parameter "stream"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/jy/func/w/m;->fG:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, v2, v2, v0}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "stream"
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/jy/func/w/m;->fG:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, v2, v2, v0}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "stream"
    .parameter "name"
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/jy/func/w/m;->fG:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, v0, v1}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "stream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 149
    iget-object v1, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, params:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #params:Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v0, params:Ljava/util/HashSet;
    invoke-virtual {p0, p1, v0}, Lcom/jy/func/w/m;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .end local v0           #params:Ljava/util/HashSet;
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 156
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 158
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 15
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 323
    .local v10, params:Ljava/util/List;
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/Map;

    if-eqz v11, :cond_5

    move-object/from16 v6, p2

    .line 324
    check-cast v6, Ljava/util/Map;

    .line 325
    .local v6, map:Ljava/util/Map;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .local v4, list:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Comparable;

    if-eqz v11, :cond_0

    .line 328
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 330
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 359
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;
    .end local v6           #map:Ljava/util/Map;
    .end local p2
    :cond_2
    :goto_1
    return-object v10

    .line 330
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;
    .restart local v6       #map:Ljava/util/Map;
    .restart local p2
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 331
    .local v7, nestedKey:Ljava/lang/Object;
    instance-of v11, v7, Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 332
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 333
    .local v8, nestedValue:Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 334
    if-nez p1, :cond_4

    check-cast v7, Ljava/lang/String;

    .end local v7           #nestedKey:Ljava/lang/Object;
    :goto_2
    invoke-direct {p0, v7, v8}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .restart local v7       #nestedKey:Ljava/lang/Object;
    :cond_4
    const-string v11, "%s[%s]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 339
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;
    .end local v6           #map:Ljava/util/Map;
    .end local v7           #nestedKey:Ljava/lang/Object;
    .end local v8           #nestedValue:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/List;

    if-eqz v11, :cond_6

    move-object/from16 v4, p2

    .line 340
    check-cast v4, Ljava/util/List;

    .line 341
    .restart local v4       #list:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 342
    .local v5, listSize:I
    const/4 v9, 0x0

    .local v9, nestedValueIndex:I
    :goto_3
    if-ge v9, v5, :cond_2

    .line 343
    const-string v11, "%s[%d]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 345
    .end local v4           #list:Ljava/util/List;
    .end local v5           #listSize:I
    .end local v9           #nestedValueIndex:I
    :cond_6
    move-object/from16 v0, p2

    instance-of v11, v0, [Ljava/lang/Object;

    if-eqz v11, :cond_7

    move-object/from16 v1, p2

    .line 346
    check-cast v1, [Ljava/lang/Object;

    .line 347
    .local v1, array:[Ljava/lang/Object;
    array-length v2, v1

    .line 348
    .local v2, arrayLength:I
    const/4 v9, 0x0

    .restart local v9       #nestedValueIndex:I
    :goto_4
    if-ge v9, v2, :cond_2

    .line 349
    const-string v11, "%s[%d]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v9

    invoke-direct {p0, v11, v12}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 351
    .end local v1           #array:[Ljava/lang/Object;
    .end local v2           #arrayLength:I
    .end local v9           #nestedValueIndex:I
    :cond_7
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/Set;

    if-eqz v11, :cond_8

    .line 352
    check-cast p2, Ljava/util/Set;

    .line 353
    .end local p2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 354
    .restart local v8       #nestedValue:Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 357
    .end local v8           #nestedValue:Ljava/lang/Object;
    .restart local p2
    :cond_8
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private b(Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;
    .locals 9
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lcom/jy/func/w/i;

    iget-object v3, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, p1, v3}, Lcom/jy/func/w/i;-><init>(Lcom/jy/func/w/n;Z)V

    .line 246
    .local v0, entity:Lcom/jy/func/w/i;
    iget-object v3, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 258
    iget-object v3, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 266
    return-object v0

    .line 244
    .end local v0           #entity:Lcom/jy/func/w/i;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 246
    .restart local v0       #entity:Lcom/jy/func/w/i;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 247
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 251
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 254
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 258
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/w/m$b;

    .line 260
    .local v2, stream:Lcom/jy/func/w/m$b;
    iget-object v3, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    iget-object v6, v2, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/jy/func/w/m$b;->fN:Z

    invoke-static {v5, v6, v7, v8}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private c(Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;
    .locals 10
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/jy/func/w/p;

    invoke-direct {v0, p1}, Lcom/jy/func/w/p;-><init>(Lcom/jy/func/w/n;)V

    .line 280
    .local v0, entity:Lcom/jy/func/w/p;
    iget-boolean v5, p0, Lcom/jy/func/w/m;->fE:Z

    invoke-virtual {v0, v5}, Lcom/jy/func/w/p;->i(Z)V

    .line 282
    iget-object v5, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v5, v6}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 287
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 291
    iget-object v5, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 304
    return-object v0

    .line 282
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 283
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v8}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 288
    .local v3, kv:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 291
    .end local v3           #kv:Lorg/apache/http/message/BasicNameValuePair;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jy/func/w/m$b;

    .line 293
    .local v4, stream:Lcom/jy/func/w/m$b;
    iget-object v5, v4, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v4, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    iget-object v9, v4, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/jy/func/w/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v4           #stream:Lcom/jy/func/w/m$b;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/w/m$a;

    .line 301
    .local v2, fileWrapper:Lcom/jy/func/w/m$a;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v2, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    iget-object v8, v2, Lcom/jy/func/w/m$a;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, v8}, Lcom/jy/func/w/p;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private dw()Lorg/apache/http/HttpEntity;
    .locals 4

    .prologue
    .line 271
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0}, Lcom/jy/func/w/m;->dx()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "RequestParams"

    const-string v2, "createFormEntity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dx()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 310
    .local v1, lparams:Ljava/util/List;
    iget-object v2, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v2, v3}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 316
    return-object v1

    .line 310
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 311
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f(Z)V
    .locals 0
    .parameter "isRepeatable"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/jy/func/w/m;->fE:Z

    .line 220
    return-void
.end method

.method private g(Z)V
    .locals 0
    .parameter "useJsonStreamer"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/jy/func/w/m;->fF:Z

    .line 224
    return-void
.end method

.method private h(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/jy/func/w/m;->fG:Z

    .line 229
    return-void
.end method

.method private has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private put(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "encoding"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "RequestParams"

    const-string v1, "setContentEncoding called with null attribute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/jy/func/w/n;)Lorg/apache/http/HttpEntity;
    .locals 8
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-boolean v1, p0, Lcom/jy/func/w/m;->fF:Z

    if-eqz v1, :cond_6

    .line 235
    move-object v0, p0

    .end local p1
    .local v0, progressHandler:Lcom/jy/func/w/n;
    new-instance v3, Lcom/jy/func/w/i;

    iget-object v1, v0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v3, p1, v1}, Lcom/jy/func/w/i;-><init>(Lcom/jy/func/w/n;Z)V

    iget-object v1, v0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v3

    .line 239
    .end local v0           #progressHandler:Lcom/jy/func/w/n;
    :goto_5
    return-object v1

    .line 235
    .restart local v0       #progressHandler:Lcom/jy/func/w/n;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/w/m$b;

    iget-object v5, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    iget-object v6, v2, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/jy/func/w/m$b;->fN:Z

    invoke-static {v5, v6, v7, v2}, Lcom/jy/func/w/m$b;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/jy/func/w/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 236
    .end local v0           #progressHandler:Lcom/jy/func/w/n;
    .restart local p1
    :cond_6
    iget-object v1, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 237
    invoke-direct {p0}, Lcom/jy/func/w/m;->dw()Lorg/apache/http/HttpEntity;

    move-result-object v1

    goto :goto_5

    .line 239
    :cond_7
    new-instance v3, Lcom/jy/func/w/p;

    invoke-direct {v3, p1}, Lcom/jy/func/w/p;-><init>(Lcom/jy/func/w/n;)V

    iget-boolean v1, p0, Lcom/jy/func/w/m;->fE:Z

    invoke-virtual {v3, v1}, Lcom/jy/func/w/p;->i(Z)V

    iget-object v1, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1, v2}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v3

    goto/16 :goto_5

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v5}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lcom/jy/func/w/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/w/m$b;

    iget-object v5, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    iget-object v6, v2, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    iget-object v2, v2, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v6, v2}, Lcom/jy/func/w/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jy/func/w/m$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v2, Lcom/jy/func/w/m$a;->file:Ljava/io/File;

    iget-object v2, v2, Lcom/jy/func/w/m$a;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v2}, Lcom/jy/func/w/p;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected final dy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/jy/func/w/m;->dx()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/w/m;->fL:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/jy/func/w/m;->fH:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/jy/func/w/m;->fI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/jy/func/w/m;->fJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 205
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jy/func/w/m;->fK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, v4}, Lcom/jy/func/w/m;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 206
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 178
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 180
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .restart local v0       #entry:Ljava/util/Map$Entry;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 189
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v3, "STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    .restart local v0       #entry:Ljava/util/Map$Entry;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 198
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, "FILE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 206
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 207
    .local v1, kv:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 208
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_7
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method
