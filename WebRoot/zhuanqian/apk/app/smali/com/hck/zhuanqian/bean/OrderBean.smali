.class public Lcom/hck/zhuanqian/bean/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
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

.field private isChuLi:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "chuLi"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "userName"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "timestamp"
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
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/OrderBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/hck/zhuanqian/bean/OrderBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/OrderBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/OrderBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isChuLi()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/hck/zhuanqian/bean/OrderBean;->isChuLi:Z

    return v0
.end method

.method public setChuLi(Z)V
    .locals 0
    .parameter "isChuLi"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/hck/zhuanqian/bean/OrderBean;->isChuLi:Z

    .line 26
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/OrderBean;->content:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput p1, p0, Lcom/hck/zhuanqian/bean/OrderBean;->id:I

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/OrderBean;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/OrderBean;->time:Ljava/lang/String;

    .line 58
    return-void
.end method
