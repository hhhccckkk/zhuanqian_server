.class public Lcom/lostip/sdk/offerwalllibrary/other/ab;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 4

    sput-boolean p0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    if-nez p0, :cond_0

    const-string v0, "LOG"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "log closed..."

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lostip/sdk/offerwalllibrary/other/ab;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
