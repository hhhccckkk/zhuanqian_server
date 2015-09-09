.class public Lcom/lostip/sdk/offerwalllibrary/other/ad;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const-string v1, "Permission Check"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lack of permission: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
