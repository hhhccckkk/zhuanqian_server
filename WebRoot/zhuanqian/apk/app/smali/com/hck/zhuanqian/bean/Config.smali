.class public Lcom/hck/zhuanqian/bean/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonAutoDetect;
    getterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# instance fields
.field private config1:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "config1"
    .end annotation
.end field

.field private config2:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "config2"
    .end annotation
.end field

.field private config3:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "config3"
    .end annotation
.end field

.field private config4:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "image1"
    .end annotation
.end field

.field private config5:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "image2"
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
.method public getConfig1()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/hck/zhuanqian/bean/Config;->config1:I

    return v0
.end method

.method public getConfig2()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/hck/zhuanqian/bean/Config;->config2:I

    return v0
.end method

.method public getConfig3()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/hck/zhuanqian/bean/Config;->config3:I

    return v0
.end method

.method public getConfig4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/Config;->config4:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hck/zhuanqian/bean/Config;->config5:Ljava/lang/String;

    return-object v0
.end method

.method public setConfig1(I)V
    .locals 0
    .parameter "config1"

    .prologue
    .line 26
    iput p1, p0, Lcom/hck/zhuanqian/bean/Config;->config1:I

    .line 27
    return-void
.end method

.method public setConfig2(I)V
    .locals 0
    .parameter "config2"

    .prologue
    .line 34
    iput p1, p0, Lcom/hck/zhuanqian/bean/Config;->config2:I

    .line 35
    return-void
.end method

.method public setConfig3(I)V
    .locals 0
    .parameter "config3"

    .prologue
    .line 42
    iput p1, p0, Lcom/hck/zhuanqian/bean/Config;->config3:I

    .line 43
    return-void
.end method

.method public setConfig4(Ljava/lang/String;)V
    .locals 0
    .parameter "config4"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/Config;->config4:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setConfig5(Ljava/lang/String;)V
    .locals 0
    .parameter "config5"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/hck/zhuanqian/bean/Config;->config5:Ljava/lang/String;

    .line 59
    return-void
.end method
