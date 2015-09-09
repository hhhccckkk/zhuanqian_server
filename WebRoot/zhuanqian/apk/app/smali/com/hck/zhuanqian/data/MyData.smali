.class public Lcom/hck/zhuanqian/data/MyData;
.super Ljava/lang/Object;
.source "MyData.java"


# static fields
.field public static final key:Ljava/lang/String; = "HCK123hck"

.field public static myData:Lcom/hck/zhuanqian/data/MyData;


# instance fields
.field private config:Lcom/hck/zhuanqian/bean/Config;

.field private userBean:Lcom/hck/zhuanqian/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData()Lcom/hck/zhuanqian/data/MyData;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/hck/zhuanqian/data/MyData;

    invoke-direct {v0}, Lcom/hck/zhuanqian/data/MyData;-><init>()V

    sput-object v0, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    .line 50
    :cond_0
    sget-object v0, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    return-object v0
.end method

.method public static getMyData()Lcom/hck/zhuanqian/data/MyData;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    return-object v0
.end method

.method public static setMyData(Lcom/hck/zhuanqian/data/MyData;)V
    .locals 0
    .parameter "myData"

    .prologue
    .line 25
    sput-object p0, Lcom/hck/zhuanqian/data/MyData;->myData:Lcom/hck/zhuanqian/data/MyData;

    .line 26
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/hck/zhuanqian/bean/Config;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hck/zhuanqian/data/MyData;->config:Lcom/hck/zhuanqian/bean/Config;

    return-object v0
.end method

.method public getUserBean()Lcom/hck/zhuanqian/bean/UserBean;
    .locals 4

    .prologue
    .line 29
    iget-object v2, p0, Lcom/hck/zhuanqian/data/MyData;->userBean:Lcom/hck/zhuanqian/bean/UserBean;

    if-nez v2, :cond_0

    .line 30
    const-string v2, "user"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hck/zhuanqian/util/MyPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, userString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-class v2, Lcom/hck/zhuanqian/bean/UserBean;

    invoke-static {v1, v2}, Lcom/hck/zhuanqian/util/JsonUtils;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hck/zhuanqian/bean/UserBean;

    iput-object v2, p0, Lcom/hck/zhuanqian/data/MyData;->userBean:Lcom/hck/zhuanqian/bean/UserBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1           #userString:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hck/zhuanqian/data/MyData;->userBean:Lcom/hck/zhuanqian/bean/UserBean;

    return-object v2

    .line 35
    .restart local v1       #userString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setConfig(Lcom/hck/zhuanqian/bean/Config;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hck/zhuanqian/data/MyData;->config:Lcom/hck/zhuanqian/bean/Config;

    .line 61
    return-void
.end method

.method public setUserBean(Lcom/hck/zhuanqian/bean/UserBean;)V
    .locals 0
    .parameter "userBean"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/hck/zhuanqian/data/MyData;->userBean:Lcom/hck/zhuanqian/bean/UserBean;

    .line 44
    return-void
.end method
