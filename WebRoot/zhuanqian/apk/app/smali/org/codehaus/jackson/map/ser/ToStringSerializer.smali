.class public final Lorg/codehaus/jackson/map/ser/ToStringSerializer;
.super Lorg/codehaus/jackson/map/ser/std/ToStringSerializer;
.source "ToStringSerializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/ToStringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/ToStringSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->instance:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/std/ToStringSerializer;-><init>()V

    return-void
.end method
