.class public Lcom/hck/zhuanqian/bean/TgAppBean;
.super Ljava/lang/Object;
.source "TgAppBean.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private downUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "downUrl"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private size:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "size"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "time"
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
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->id:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->size:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->uid:J

    return-wide v0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downUrl"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->downUrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->id:J

    .line 28
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 51
    iput p1, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->size:I

    .line 52
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->time:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/hck/zhuanqian/bean/TgAppBean;->uid:J

    .line 36
    return-void
.end method
