.class public Lcom/jy/func/lner/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field strCode:Ljava/lang/String;

.field strText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strCode:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strText:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strCode:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strText:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/jy/func/lner/ErrorInfo;->strCode:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/jy/func/lner/ErrorInfo;->strText:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strCode:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jy/func/lner/ErrorInfo;->strText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorInfo [code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jy/func/lner/ErrorInfo;->strCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jy/func/lner/ErrorInfo;->strText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
