.class public Lcom/hck/zhuanqian/net/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final TIME_OUT:I = 0x3a98

.field private static client:Lcom/hck/httpserver/HCKHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/hck/httpserver/HCKHttpClient;

    invoke-direct {v0}, Lcom/hck/httpserver/HCKHttpClient;-><init>()V

    sput-object v0, Lcom/hck/zhuanqian/net/Request;->client:Lcom/hck/httpserver/HCKHttpClient;

    .line 19
    sget-object v0, Lcom/hck/zhuanqian/net/Request;->client:Lcom/hck/httpserver/HCKHttpClient;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/hck/httpserver/HCKHttpClient;->setTimeout(I)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrder(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 218
    const-string v0, "addOrderP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 219
    return-void
.end method

.method public static addPoint(IILjava/lang/String;IZLcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 6
    .parameter "kid"
    .parameter "num"
    .parameter "type"
    .parameter "point"
    .parameter "isTg"
    .parameter "handler"

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v1}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 127
    .local v1, params:Lcom/hck/httpserver/RequestParams;
    const-string v2, "uid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "kid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "money"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p4, :cond_0

    .line 133
    const-string v2, "isTg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    const-string v2, "addMoneyP"

    invoke-static {v2, v1, p5}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #params:Lcom/hck/httpserver/RequestParams;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "\u6570\u636e\u5f02\u5e38 \u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v2}, Lcom/hck/zhuanqian/view/MyToast;->showCustomerToast(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/hck/zhuanqian/util/AppManager;->getAppManager()Lcom/hck/zhuanqian/util/AppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/util/AppManager;->AppExit()V

    goto :goto_0
.end method

.method public static addTGInfo(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 247
    const-string v0, "addTgP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 248
    return-void
.end method

.method public static addUser(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V
    .locals 2
    .parameter "handler"
    .parameter "params"

    .prologue
    .line 70
    const-string v0, "password"

    const-string v1, "HCK123hck"

    invoke-virtual {p1, v0, v1}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "addUserP"

    invoke-static {v0, p1, p0}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 72
    return-void
.end method

.method public static addYiJian(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 207
    const-string v0, "addFanKuiP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 208
    return-void
.end method

.method public static daBao(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V
    .locals 1
    .parameter "handler"
    .parameter "params"

    .prologue
    .line 227
    const-string v0, "dabao"

    invoke-static {v0, p1, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 228
    return-void
.end method

.method public static deleteMsg(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 196
    const-string v0, "deleteMessageP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 197
    return-void
.end method

.method private static get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "method"
    .parameter "handler"

    .prologue
    .line 34
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 35
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    invoke-static {p0, v0, p1}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 36
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 3
    .parameter "method"
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 40
    const-string v0, "password"

    const-string v1, "HCK123hck"

    invoke-virtual {p1, v0, v1}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/hck/zhuanqian/net/Request;->client:Lcom/hck/httpserver/HCKHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://115.159.78.151:8080/MyMoney/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 42
    return-void
.end method

.method public static getConfig(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 50
    const-string v0, "getConfigP"

    invoke-static {v0, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 51
    return-void
.end method

.method public static getDuiHuanJiLu(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 102
    const-string v0, "getOrdersP"

    invoke-static {v0, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 104
    return-void
.end method

.method public static getHongBao(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 4
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 151
    const-string v0, "uid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "getHongBaoP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 153
    return-void
.end method

.method public static getKind(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 112
    const-string v0, "getKindsP"

    invoke-static {v0, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 114
    return-void
.end method

.method public static getMsg(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 185
    const-string v0, "getUserMessageP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 186
    return-void
.end method

.method public static getMyTgAppUrl(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 5
    .parameter "handler"

    .prologue
    .line 236
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 237
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    const-string v1, "uid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "getMyTgAppUrl"

    invoke-static {v1, v0, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 239
    return-void
.end method

.method public static getSize(Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 5
    .parameter "handler"

    .prologue
    .line 58
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 59
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    const-string v1, "uid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hck/zhuanqian/data/MyData;->getData()Lcom/hck/zhuanqian/data/MyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/data/MyData;->getUserBean()Lcom/hck/zhuanqian/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hck/zhuanqian/bean/UserBean;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "getSize"

    invoke-static {v1, v0, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 61
    return-void
.end method

.method public static getTG(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V
    .locals 1
    .parameter "handler"
    .parameter "params"

    .prologue
    .line 92
    const-string v0, "getTgP"

    invoke-static {v0, p1, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 94
    return-void
.end method

.method public static getZhuanQianJiLu(Lcom/hck/httpserver/HCKHttpResponseHandler;Lcom/hck/httpserver/RequestParams;)V
    .locals 1
    .parameter "handler"
    .parameter "params"

    .prologue
    .line 83
    const-string v0, "getUserAllOrders"

    invoke-static {v0, p1, p0}, Lcom/hck/zhuanqian/net/Request;->get(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 85
    return-void
.end method

.method private static post(Ljava/lang/String;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "method"
    .parameter "handler"

    .prologue
    .line 23
    new-instance v0, Lcom/hck/httpserver/RequestParams;

    invoke-direct {v0}, Lcom/hck/httpserver/RequestParams;-><init>()V

    .line 24
    .local v0, params:Lcom/hck/httpserver/RequestParams;
    invoke-static {p0, v0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 25
    return-void
.end method

.method public static post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 3
    .parameter "method"
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 29
    const-string v0, "password"

    const-string v1, "HCK123hck"

    invoke-virtual {p1, v0, v1}, Lcom/hck/httpserver/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/hck/zhuanqian/net/Request;->client:Lcom/hck/httpserver/HCKHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://115.159.78.151:8080/MyMoney/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/hck/httpserver/HCKHttpClient;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 31
    return-void
.end method

.method public static updateChouJiangSize(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 251
    const-string v0, "updateChouJiangP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 252
    return-void
.end method

.method public static updateHongBao(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 163
    const-string v0, "updateHongBaoP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 164
    return-void
.end method

.method public static updateUserInfo(Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V
    .locals 1
    .parameter "params"
    .parameter "handler"

    .prologue
    .line 174
    const-string v0, "updateUserP"

    invoke-static {v0, p0, p1}, Lcom/hck/zhuanqian/net/Request;->post(Ljava/lang/String;Lcom/hck/httpserver/RequestParams;Lcom/hck/httpserver/HCKHttpResponseHandler;)V

    .line 175
    return-void
.end method
