.class public Lcom/hck/zhuanqian/util/MyPreferences;
.super Ljava/lang/Object;
.source "MyPreferences.java"


# static fields
.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static preference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "mypreference"

    .line 15
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 83
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 104
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 107
    .end local p1
    :cond_0
    return-object p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 97
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 111
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 114
    .end local p1
    :cond_0
    return-object p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 90
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    .end local p1
    :cond_0
    return-object p1
.end method

.method public static saveBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "boolen"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :cond_0
    const-string v0, "hck"

    const-string v1, "MyPreferences saveBoolen null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 25
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2
    .parameter "key"
    .parameter "data"

    .prologue
    .line 57
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    const-string v0, "hck"

    const-string v1, "MyPreferences saveInt null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 63
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 64
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "data"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    :cond_0
    const-string v0, "hck"

    const-string v1, "MyPreferences saveInt null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 50
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter "key"
    .parameter "data"

    .prologue
    .line 70
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_0
    const-string v0, "hck"

    const-string v1, "MyPreferences saveInt null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 76
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "data"

    .prologue
    .line 32
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    :cond_0
    const-string v0, "hck"

    const-string v1, "MyPreferences saveString null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 38
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    sget-object v0, Lcom/hck/zhuanqian/util/MyPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
