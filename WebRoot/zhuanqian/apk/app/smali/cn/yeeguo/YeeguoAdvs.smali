.class Lcn/yeeguo/YeeguoAdvs;
.super Ljava/lang/Object;
.source "YeeguoAdvs.java"


# instance fields
.field private aid:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private complete_all:I

.field private complete_page:Ljava/lang/String;

.field private complete_require:Ljava/lang/String;

.field private exp:I

.field private expcount:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->aid:Ljava/lang/String;

    return-object v0
.end method

.method protected getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete_all()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcn/yeeguo/YeeguoAdvs;->complete_all:I

    return v0
.end method

.method public getComplete_page()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->complete_page:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete_require()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->complete_require:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcn/yeeguo/YeeguoAdvs;->exp:I

    return v0
.end method

.method public getExpcount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->expcount:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/yeeguo/YeeguoAdvs;->token:Ljava/lang/String;

    return-object v0
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 25
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->aid:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected setAppname(Ljava/lang/String;)V
    .locals 0
    .parameter "appname"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->appname:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setComplete_all(I)V
    .locals 0
    .parameter "complete_all"

    .prologue
    .line 55
    iput p1, p0, Lcn/yeeguo/YeeguoAdvs;->complete_all:I

    .line 56
    return-void
.end method

.method public setComplete_page(Ljava/lang/String;)V
    .locals 0
    .parameter "complete_page"

    .prologue
    .line 67
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->complete_page:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setComplete_require(Ljava/lang/String;)V
    .locals 0
    .parameter "complete_require"

    .prologue
    .line 61
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->complete_require:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setExp(I)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 49
    iput p1, p0, Lcn/yeeguo/YeeguoAdvs;->exp:I

    .line 50
    return-void
.end method

.method public setExpcount(Ljava/lang/String;)V
    .locals 0
    .parameter "expcount"

    .prologue
    .line 43
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->expcount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->packageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 19
    iput-object p1, p0, Lcn/yeeguo/YeeguoAdvs;->token:Ljava/lang/String;

    .line 20
    return-void
.end method
