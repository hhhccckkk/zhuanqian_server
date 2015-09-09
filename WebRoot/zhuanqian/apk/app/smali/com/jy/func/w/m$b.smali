.class public final Lcom/jy/func/w/m$b;
.super Ljava/lang/Object;
.source "CYZRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/w/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final fM:Ljava/io/InputStream;

.field public final fN:Z

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "inputStream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/jy/func/w/m$b;->fM:Ljava/io/InputStream;

    .line 376
    iput-object p2, p0, Lcom/jy/func/w/m$b;->name:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lcom/jy/func/w/m$b;->contentType:Ljava/lang/String;

    .line 378
    iput-boolean p4, p0, Lcom/jy/func/w/m$b;->fN:Z

    .line 379
    return-void
.end method

.method static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/jy/func/w/m$b;
    .locals 1
    .parameter "inputStream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 382
    new-instance v0, Lcom/jy/func/w/m$b;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    .end local p2
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jy/func/w/m$b;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
