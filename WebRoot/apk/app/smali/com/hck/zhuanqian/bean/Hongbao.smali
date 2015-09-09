.class public Lcom/hck/zhuanqian/bean/Hongbao;
.super Ljava/lang/Object;
.source "Hongbao.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field content:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "content"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private isOpen:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "isOpen"
    .end annotation
.end field

.field private isXiTong:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "isXiTong"
    .end annotation
.end field

.field private point:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "point"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "time"
    .end annotation
.end field

.field private uName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "uName"
    .end annotation
.end field

.field private uid:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "uid"
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
    .line 60
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->id:J

    return-wide v0
.end method

.method public getIsOpen()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->isOpen:I

    return v0
.end method

.method public getIsXiTong()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->isXiTong:I

    return v0
.end method

.method public getPoint()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->point:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->uid:J

    return-wide v0
.end method

.method public getuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/Hongbao;->uName:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->content:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->id:J

    .line 41
    return-void
.end method

.method public setIsOpen(I)V
    .locals 0
    .parameter "isOpen"

    .prologue
    .line 88
    iput p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->isOpen:I

    .line 89
    return-void
.end method

.method public setIsXiTong(I)V
    .locals 0
    .parameter "isXiTong"

    .prologue
    .line 32
    iput p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->isXiTong:I

    .line 33
    return-void
.end method

.method public setPoint(I)V
    .locals 0
    .parameter "point"

    .prologue
    .line 80
    iput p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->point:I

    .line 81
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->time:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->uid:J

    .line 49
    return-void
.end method

.method public setuName(Ljava/lang/String;)V
    .locals 0
    .parameter "uName"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/Hongbao;->uName:Ljava/lang/String;

    .line 57
    return-void
.end method
