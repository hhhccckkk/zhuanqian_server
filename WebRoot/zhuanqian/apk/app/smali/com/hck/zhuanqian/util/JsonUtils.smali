.class public Lcom/hck/zhuanqian/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lcom/hck/zhuanqian/util/JsonUtils;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/hck/zhuanqian/util/JsonUtils;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/hck/zhuanqian/util/JsonUtils;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/hck/zhuanqian/util/JsonUtils;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 19
    sget-object v0, Lcom/hck/zhuanqian/util/JsonUtils;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/hck/zhuanqian/util/JsonUtils;->sObjectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    .local p1, clasz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/hck/zhuanqian/util/JsonUtils;->getMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;,
            Lorg/codehaus/jackson/map/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/hck/zhuanqian/util/JsonUtils;->getMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
