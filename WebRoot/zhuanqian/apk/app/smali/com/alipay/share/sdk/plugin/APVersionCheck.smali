.class public Lcom/alipay/share/sdk/plugin/APVersionCheck;
.super Ljava/lang/Object;
.source "APVersionCheck.java"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/plugin/APVersionCheck;->contentResolver:Landroid/content/ContentResolver;

    .line 16
    return-void
.end method


# virtual methods
.method public getZFBSupportVersion(I)I
    .locals 9
    .parameter "defaultValue"

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/alipay/share/sdk/plugin/APVersionCheck;->contentResolver:Landroid/content/ContentResolver;

    .line 22
    const-string v1, "content://com.alipay.sharesdk/sdk_version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 23
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 35
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local p1
    :goto_0
    return p1

    .line 26
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local p1
    :cond_0
    move v8, p1

    .line 27
    .local v8, result:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 30
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v8

    .line 31
    goto :goto_0

    .line 33
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #result:I
    :catch_0
    move-exception v7

    .line 34
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
