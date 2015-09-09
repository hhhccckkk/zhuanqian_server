.class public Lcom/hck/zhuanqian/bean/KindBean;
.super Ljava/lang/Object;
.source "KindBean.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private aid:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "aid"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "content"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isOk:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "isok"
    .end annotation
.end field

.field private neirong:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "neirong"
    .end annotation
.end field

.field private num:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "num"
    .end annotation
.end field

.field private paixun:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "paixun"
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
.method public getAid()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->aid:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->id:I

    return v0
.end method

.method public getIsOk()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->isOk:I

    return v0
.end method

.method public getNeirong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->neirong:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->num:I

    return v0
.end method

.method public getPaixun()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/hck/zhuanqian/bean/KindBean;->paixun:I

    return v0
.end method

.method public setAid(I)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 38
    iput p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->aid:I

    .line 39
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->content:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 62
    iput p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->id:I

    .line 63
    return-void
.end method

.method public setIsOk(I)V
    .locals 0
    .parameter "isOk"

    .prologue
    .line 78
    iput p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->isOk:I

    .line 79
    return-void
.end method

.method public setNeirong(Ljava/lang/String;)V
    .locals 0
    .parameter "neirong"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->neirong:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 54
    iput p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->num:I

    .line 55
    return-void
.end method

.method public setPaixun(I)V
    .locals 0
    .parameter "paixun"

    .prologue
    .line 30
    iput p1, p0, Lcom/hck/zhuanqian/bean/KindBean;->paixun:I

    .line 31
    return-void
.end method
