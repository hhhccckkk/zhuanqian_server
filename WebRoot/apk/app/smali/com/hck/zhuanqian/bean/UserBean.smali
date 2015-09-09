.class public Lcom/hck/zhuanqian/bean/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private TGMoney:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "TGMoney"
    .end annotation
.end field

.field private allKeDouBi:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "kedoubi"
    .end annotation
.end field

.field private allMoney:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "allMoney"
    .end annotation
.end field

.field private choujiang:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "choujiang"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isXinShou:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "xinshou"
    .end annotation
.end field

.field private isok:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "isok"
    .end annotation
.end field

.field private mac:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "mac"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "phone"
    .end annotation
.end field

.field private qq:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "qq"
    .end annotation
.end field

.field private shangjia1:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "shangjia1"
    .end annotation
.end field

.field private shangjia2:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "shangjia2"
    .end annotation
.end field

.field private shangjia3:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "shangjia3"
    .end annotation
.end field

.field private shangjia4:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "shangjia4"
    .end annotation
.end field

.field private shangjia5:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "shangjia5"
    .end annotation
.end field

.field private tg:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "tg"
    .end annotation
.end field

.field private zhifubao:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "zhifubao"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllKeDouBi()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->allKeDouBi:J

    return-wide v0
.end method

.method public getAllMoney()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->allMoney:J

    return-wide v0
.end method

.method public getChoujiang()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->choujiang:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->id:J

    return-wide v0
.end method

.method public getIsok()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->isok:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getShangjia1()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia1:J

    return-wide v0
.end method

.method public getShangjia2()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia2:J

    return-wide v0
.end method

.method public getShangjia3()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia3:J

    return-wide v0
.end method

.method public getShangjia4()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia4:J

    return-wide v0
.end method

.method public getShangjia5()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia5:J

    return-wide v0
.end method

.method public getTGMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->TGMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getTg()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->tg:J

    return-wide v0
.end method

.method public getZhifubao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->zhifubao:Ljava/lang/String;

    return-object v0
.end method

.method public isXinShou()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hck/zhuanqian/bean/UserBean;->isXinShou:Z

    return v0
.end method

.method public setAllKeDouBi(J)V
    .locals 0
    .parameter "allKeDouBi"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->allKeDouBi:J

    .line 125
    return-void
.end method

.method public setAllMoney(J)V
    .locals 0
    .parameter "allMoney"

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->allMoney:J

    .line 119
    return-void
.end method

.method public setChoujiang(I)V
    .locals 0
    .parameter "choujiang"

    .prologue
    .line 51
    iput p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->choujiang:I

    .line 52
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->id:J

    .line 131
    return-void
.end method

.method public setIsok(I)V
    .locals 0
    .parameter "isok"

    .prologue
    .line 149
    iput p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->isok:I

    .line 150
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->mac:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->phone:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->qq:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setShangjia1(J)V
    .locals 0
    .parameter "shangjia1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia1:J

    .line 76
    return-void
.end method

.method public setShangjia2(J)V
    .locals 0
    .parameter "shangjia2"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia2:J

    .line 82
    return-void
.end method

.method public setShangjia3(J)V
    .locals 0
    .parameter "shangjia3"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia3:J

    .line 88
    return-void
.end method

.method public setShangjia4(J)V
    .locals 0
    .parameter "shangjia4"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia4:J

    .line 64
    return-void
.end method

.method public setShangjia5(J)V
    .locals 0
    .parameter "shangjia5"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->shangjia5:J

    .line 70
    return-void
.end method

.method public setTGMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "tGMoney"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->TGMoney:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTg(J)V
    .locals 0
    .parameter "tg"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->tg:J

    .line 156
    return-void
.end method

.method public setXinShou(Z)V
    .locals 0
    .parameter "isXinShou"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->isXinShou:Z

    .line 113
    return-void
.end method

.method public setZhifubao(Ljava/lang/String;)V
    .locals 0
    .parameter "zhifubao"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/UserBean;->zhifubao:Ljava/lang/String;

    .line 100
    return-void
.end method
