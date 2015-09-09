.class final Lcom/jy/func/u/r$a;
.super Ljava/lang/Object;
.source "ParaManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jy/func/u/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static dm:Lcom/jy/func/u/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/jy/func/u/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jy/func/u/r;-><init>(B)V

    sput-object v0, Lcom/jy/func/u/r$a;->dm:Lcom/jy/func/u/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic cB()Lcom/jy/func/u/r;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/jy/func/u/r$a;->dm:Lcom/jy/func/u/r;

    return-object v0
.end method
