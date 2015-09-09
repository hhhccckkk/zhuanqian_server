.class public final Lcom/jy/func/t/f;
.super Ljava/lang/Object;
.source "CYZ_PreferencesHelper.java"


# static fields
.field private static bR:Landroid/content/Context;

.field private static bV:Ljava/lang/String;

.field private static bW:Lcom/jy/func/t/f;

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "CYZAndroidCommon"

    sput-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/jy/func/t/f;->bR:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;F)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 195
    .line 196
    sget-object v1, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 91
    .line 92
    sget-object v1, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 143
    .line 144
    sget-object v1, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 38
    .line 39
    sget-object v1, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 247
    .line 248
    sget-object v1, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter

    .prologue
    .line 230
    .line 231
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    const/high16 v1, -0x4080

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter

    .prologue
    .line 126
    .line 127
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter

    .prologue
    .line 178
    .line 179
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 74
    .line 75
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 283
    .line 284
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    .line 283
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lcom/jy/func/t/f;
    .locals 2
    .parameter "mContext"

    .prologue
    .line 20
    const-class v1, Lcom/jy/func/t/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jy/func/t/f;->bW:Lcom/jy/func/t/f;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lcom/jy/func/t/f;

    invoke-direct {v0, p0}, Lcom/jy/func/t/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jy/func/t/f;->bW:Lcom/jy/func/t/f;

    .line 23
    :cond_0
    sget-object v0, Lcom/jy/func/t/f;->bW:Lcom/jy/func/t/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jy/func/t/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 110
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 162
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)F
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 214
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 266
    sget-object v0, Lcom/jy/func/t/f;->bV:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
