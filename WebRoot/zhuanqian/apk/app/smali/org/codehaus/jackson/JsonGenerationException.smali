.class public Lorg/codehaus/jackson/JsonGenerationException;
.super Lorg/codehaus/jackson/JsonProcessingException;
.source "JsonGenerationException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 21
    const/4 v0, 0x0

    check-cast v0, Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "rootCause"

    .prologue
    .line 26
    const/4 v0, 0x0

    check-cast v0, Lorg/codehaus/jackson/JsonLocation;

    invoke-direct {p0, p1, v0, p2}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "rootCause"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method
