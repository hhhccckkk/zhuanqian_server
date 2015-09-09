.class public Lcom/zy/phone/SDKInit;
.super Ljava/lang/Object;


# static fields
.field private static handler:Landroid/os/Handler;

.field private static init:Landroid/content/SharedPreferences;

.field private static or:I

.field private static pThead:Lcom/zy/phone/net/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/zy/phone/SDKInit;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MusicServiceIsStart(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$0()I
    .locals 1

    sget v0, Lcom/zy/phone/SDKInit;->or:I

    return v0
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/zy/phone/SDKInit;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static addIntegral(Lcom/zy/phone/net/Integral;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/zy/phone/SDKInit;->or:I

    new-instance v0, Lcom/zy/phone/l;

    invoke-direct {v0, p0, p1}, Lcom/zy/phone/l;-><init>(Lcom/zy/phone/net/Integral;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zy/phone/l;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Lcom/zy/phone/net/Integral;->retCheckIntegral(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "1"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Lcom/zy/phone/net/Integral;->retCheckIntegral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkIntegral(Lcom/zy/phone/net/Integral;)V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zy/phone/SDKInit;->or:I

    new-instance v0, Lcom/zy/phone/l;

    invoke-direct {v0, p0}, Lcom/zy/phone/l;-><init>(Lcom/zy/phone/net/Integral;)V

    invoke-virtual {v0}, Lcom/zy/phone/l;->start()V

    return-void
.end method

.method public static initAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zy_init"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zy/phone/SDKInit;->init:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AppCode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Other"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5bc6\u94a5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static initAdList(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    const-string v0, "zy_init"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    const-string v2, "com.zy.phone.service.ZYService"

    invoke-static {v0, v2}, Lcom/zy/phone/SDKInit;->MusicServiceIsStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zy/phone/sdk/SDKActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "1"

    goto :goto_1

    :cond_2
    const-string v0, "\u4e0d\u80fd\u4f7f\u7528\u6a21\u62df\u5668"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    const-string v0, "\u5148\u6e05\u7a7a\u76f8\u540c\u7a0b\u5e8f"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    const-string v0, "\u6ca1\u6709\u5b58\u50a8\u7a7a\u95f4"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public static minusIntegral(Lcom/zy/phone/net/Integral;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/zy/phone/SDKInit;->or:I

    new-instance v0, Lcom/zy/phone/l;

    invoke-direct {v0, p0, p1}, Lcom/zy/phone/l;-><init>(Lcom/zy/phone/net/Integral;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zy/phone/l;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Lcom/zy/phone/net/Integral;->retMinusIntegral(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "1"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Lcom/zy/phone/net/Integral;->retMinusIntegral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
