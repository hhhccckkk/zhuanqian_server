.class public Lcom/qidian/intwal/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/qidian/intwal/c;


# instance fields
.field a:Ljava/util/ArrayList;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    const/16 v0, 0x6f

    iput v0, p0, Lcom/qidian/intwal/c;->c:I

    return-void
.end method

.method public static a()Lcom/qidian/intwal/c;
    .locals 1

    sget-object v0, Lcom/qidian/intwal/c;->b:Lcom/qidian/intwal/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qidian/intwal/c;

    invoke-direct {v0}, Lcom/qidian/intwal/c;-><init>()V

    sput-object v0, Lcom/qidian/intwal/c;->b:Lcom/qidian/intwal/c;

    :cond_0
    sget-object v0, Lcom/qidian/intwal/c;->b:Lcom/qidian/intwal/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lcom/qidian/intwal/h;
    .locals 6

    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget v0, p0, Lcom/qidian/intwal/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qidian/intwal/c;->c:I

    new-instance v0, Lcom/qidian/intwal/h;

    invoke-direct {v0}, Lcom/qidian/intwal/h;-><init>()V

    iget v5, p0, Lcom/qidian/intwal/c;->c:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qidian/intwal/h;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qidian/intwal/h;

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    if-lez v4, :cond_2

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/qidian/intwal/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->b()V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qidian/intwal/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qidian/intwal/h;

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->f()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0}, Lcom/qidian/intwal/h;->a()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
